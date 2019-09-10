##############################################################################
#>
#
# Creates or re-uses an AWS EC2 key pair.
#
# AWS MUST be considered authoritative b/c if a key pair exists it may be in use
# If AWS has no key pair then we should make a new one even if we have matches locally
#
# XXX: KeyPairs are regional, so this should be too
# XXX: Should gen key name if none given
#
# IF AWS
#   IF no priv THEN punt
#   IF no pub THEN priv->pub
#   IF no check THEN overwrite priv->pub
#   IF no match THEN punt
# ELSE !AWS
#   Nuke local
#   Make local
#   Import to AWS
#
#<
##############################################################################
p6_aws_ec2_svc_key_pair_make() {
    local key_name="$1"
    local dir="${2:-$HOME/.ssh/dynamic}"

    local key_file_priv=$dir/$key_name
    local key_file_pub=${key_file_priv}.pub

    if p6_aws_ec2_svc_key_pair_exists "$key_name"; then
	# IF AWS but no priv key then PUNT
	if ! p6_file_exists "$key_file_priv"; then
	    p6_die "251" "NO PRIVATE KEY [AWS($key_name)->$key_file_priv]"
	fi

	# IF the public key doesn't exist generate it from private
	if ! p6_file_exists "$key_file_pub"; then
	    p6_ssh_pub_key_from_priv "$key_file_priv" "$key_file_pub"
	fi

	# If the check fails, overwrite they pub key by generating from private
	if ! p6_ssh_key_check "$key_file_priv" "$key_file_pub"; then
	    p6_ssh_pub_key_from_priv "$key_file_priv" "$key_file_pub"
	fi

	# At this point, local FS is consistent

	# If the fingerprints don't match then PUNT
	if ! p6_aws_ec2_key_pair_match "$key_name" "$dir"; then
	    p6_die "252" "MISMATCH [AWS($key_name) is not $key_file_priv]"
	fi

	# Its already imported here do nothing
    else
	# Nuke them
	p6_ssh_key_delete "$key_file_priv"
	p6_ssh_key_remove "$key_file_priv" "$key_file_pub"

	# Make them
	p6_ssh_key_make "$key_file_priv"
	p6_ssh_keys_chmod "$key_file_priv"
	p6_ssh_key_add "$key_file_priv"

	p6_aws_ec2_key_pair_import "$key_name" "file://$key_file_pub"
    fi
}

p6_aws_ec2_svc_key_pair_delete() {
    local key_name="$1"
    local dir="${2:-$HOME/.ssh/dynamic}"

    local key_file_priv=$dir/$key_name
    local key_file_pub=${key_file_priv}.pub

    p6_aws_ec2_key_pair_delete "$key_name"
    p6_ssh_key_delete "$key_file_priv"
    p6_ssh_key_remove "$key_file_priv" "$key_file_pub"
}

p6_aws_ec2_svc_key_pair_exists() {
    local key_name="$1"

    local aws_key_name=$(
	p6_aws_ec2_key_pairs_describe \
	    --output text \
	    --filters Name=key-name,Values=$key_name \
	    --query "'KeyPairs[].[KeyName]'"
	  )

    if p6_string_blank "$aws_key_name"; then
	p6_return_true
    else
	p6_return_false
    fi
}

p6_aws_ec2_svc_key_pair_match() {
    local key_name="$1"
    local dir="${2:-$HOME/.ssh/dynamic}"

    local key_file_pub=$dir/$key_name.pub

    local local_fingerprint=$(p6_ssh_key_fingerprint "$key_file_pub")
    local aws_fingerprint=$(p6_aws_ec2_svc_key_pair_fingerprint "$key_name")
}

p6_aws_ec2_svc_key_pair_fingerprint() {
    local key_name="$1"

    local aws_fingerprint=$(
	p6_aws_ec2_key_pairs_describe \
	    --output text \
	    --filters Name=key-name,Values=$key_name \
	    --query "'KeyPairs[].[KeyFingerprint]'"
	  )

    p6_return "$aws_fingerprint"
}

p6_aws_ec2_svc_key_pairs_list() {
    local key_name="$1"

    p6_aws_ec2_key_pairs_describe \
	--output text \
	--query "'KeyPairs[]'"
}

p6_aws_ec2_svc_ec2_key_name() {
  local instance_id="$1"

  local key_name=$(
      p6_aws_ec2_instances_describe \
	  --output text \
	  --instance-id $instance_id \
	  --query "Reservations[0].Instances[0].KeyName"
	)

  p6_return "$key_name"
}
