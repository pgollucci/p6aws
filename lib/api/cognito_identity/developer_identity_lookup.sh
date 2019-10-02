######################################################################
#<
#
# Function:
#	p6_aws_cognito_identity_developer_identity_lookup(identity_pool_id)
#
#  Args:
#	identity_pool_id - 
#
#>
######################################################################
p6_aws_cognito_identity_developer_identity_lookup() {
    local identity_pool_id="$1"
    shift 1

    p6_run_write_cmd aws cognito-identity lookup-developer-identity --identity-pool-id $identity_pool_id "$@"
}