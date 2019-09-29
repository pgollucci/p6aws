######################################################################
#<
#
# Function:
#      = p6_aws_signer_signing_profiles_list()
#
#
#
#>
######################################################################
p6_aws_signer_signing_profiles_list() {

    p6_run_read_cmd aws signer list-signing-profiles "$@"
}