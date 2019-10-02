######################################################################
#<
#
# Function:
#	p6_aws_cognito_identity_identity_pool_describe(identity_pool_id)
#
#  Args:
#	identity_pool_id - 
#
#>
######################################################################
p6_aws_cognito_identity_identity_pool_describe() {
    local identity_pool_id="$1"
    shift 1

    p6_run_read_cmd aws cognito-identity describe-identity-pool --identity-pool-id $identity_pool_id "$@"
}