######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_disable_provider_for_user_admin(user_pool_id, user)
#
#  Args:
#	user_pool_id - 
#	user - 
#
#>
######################################################################
p6_aws_cognito_idp_disable_provider_for_user_admin() {
    local user_pool_id="$1"
    local user="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp admin-disable-provider-for-user --user-pool-id $user_pool_id --user $user "$@"
}