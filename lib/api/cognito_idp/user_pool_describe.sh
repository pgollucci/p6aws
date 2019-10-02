######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_user_pool_describe(user_pool_id)
#
#  Args:
#	user_pool_id - 
#
#>
######################################################################
p6_aws_cognito_idp_user_pool_describe() {
    local user_pool_id="$1"
    shift 1

    p6_run_read_cmd aws cognito-idp describe-user-pool --user-pool-id $user_pool_id "$@"
}