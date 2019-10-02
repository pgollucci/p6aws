######################################################################
#<
#
# Function:
#	p6_aws_signer_signing_profile_get(profile_name)
#
#  Args:
#	profile_name - 
#
#>
######################################################################
p6_aws_signer_signing_profile_get() {
    local profile_name="$1"
    shift 1

    p6_run_read_cmd aws signer get-signing-profile --profile-name $profile_name "$@"
}