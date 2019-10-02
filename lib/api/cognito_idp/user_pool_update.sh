######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_user_pool_update(user_pool_id)
#
#  Args:
#	user_pool_id - 
#
#>
######################################################################
p6_aws_cognito_idp_user_pool_update() {
    local user_pool_id="$1"
    shift 1

    p6_run_write_cmd aws cognito-idp update-user-pool --user-pool-id $user_pool_id "$@"
}