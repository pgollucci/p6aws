##############################################################################
#>
#
# Creates or re-uses an AWS EC2 key pair.
#
# AWS MUST be considered authoritative b/c if a key pair exists it may be in use
#
# XXX: KeyPairs are regional, so this should be too
# XXX: Should gen key name if none given
#
# IF AWS
#  IF priv and pub and valid and match THEN good
#  :IF !priv THEN punt
#  :IF priv and !pub THEN gen pub THEN match THEN good
#  :IF priv and pub and !valid THEN gen pub THEN match THEN good
#  :IF priv and pub and valid and !match PUNT
# ELSE !AWS
#  IF priv and pub and valid THEN import
#  :IF !priv THEN CREATE
#  :IF priv and !pub THEN gen pub THEN import
#  :IF priv and pub and !valid THEN gen pub THEN import
#
# Always chmod
# Always add to identities
# MacOSX: Add to Key Chain
#
#<
##############################################################################
p6_aws_ec2_svc_key_pair_make() {
    local key_name="$1"
    local dir="$2"

    local key_file_priv=$dir/$key_name
    local key_file_pub=${key_file_priv}.pub

    if p6_aws_ec2_svc_key_pair_exists "$key_name"; then
	if p & p & v & m; then
	    true
	else
	    if !p; then
		true
	    elif !p; then
		true
	    elif !valid; then
		true
	    fi
	fi
    else
	if p & p; then
	    true
	elif !p; then
	    true
	elif !p; then
	    true
	elif !valid; then
	    true
	fi
    fi
}

p6_aws_ec2_svc_key_pair_delete() {
    local key_name="$1"
    local dir="$2"

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
	p6_return_false
    else
	p6_return_true
    fi
}

p6_aws_ec2_svc_key_pair_match() {
    local key_name="$1"
    local dir="$2"

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
}

p6_aws_ec2_svc_key_pairs_list() {
    local key_name="$1"

    p6_aws_ec2_key_pairs_describe \
	--output text \
	--query "'KeyPairs[]'"
}


    # if p6_aws_ec2_svc_key_pair_exists "$key_name"; then
    #	if ! p6_ssh_key_check "$key_file_priv" "$key_file_pub"; then
    #	    p6_ssh_key_make "$key_file_priv"
    #	else
    #	    true
    #	fi
    # else
    #	if ! p6_ssh_key_check "$key_file_priv" "$key_file_pub"; then
    #	    if p6_file_exists "$key_file_priv"; then
    #		# priv->pub
    #	    else
    #		p6_ssh_key_make "$key_file_priv"
    #	    fi
    #	else
    #	    true
    #	fi

    # fi


    #	if p6_file_exists "$key_file_pub"; thne
    #	    p6_aws_ec2_key_pair_import "$key_name" "file:/$key_file_pub"
    #	else
    #	    p6_aws_ec2_key_pair_create "$key_name" --query KeyMaterial | perl -p -e 's,",,g ; s,\\n,\n,g' > $key_file_priv
    #	fi
    # fi

    # # Validate!
    # p6_ssh_chmod "$key_file_priv"
    # [ ! -r "$key_file_pub" ] && p6_ssh_pub_key_from_priv "$key_file_priv" "$key_file_pub"
    # p6_ssh_key_check "$key_file_pub" "$key_file_pub"
