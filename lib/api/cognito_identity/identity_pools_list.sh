######################################################################
#<
#
# Function:
#	p6_aws_cognito_identity_identity_pools_list()
#
#>
######################################################################
p6_aws_cognito_identity_identity_pools_list() {

    p6_run_read_cmd aws cognito-identity list-identity-pools "$@"
}