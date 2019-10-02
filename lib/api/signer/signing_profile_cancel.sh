######################################################################
#<
#
# Function:
#	p6_aws_signer_signing_profile_cancel(profile_name)
#
#  Args:
#	profile_name - 
#
#>
######################################################################
p6_aws_signer_signing_profile_cancel() {
    local profile_name="$1"
    shift 1

    p6_run_write_cmd aws signer cancel-signing-profile --profile-name $profile_name "$@"
}