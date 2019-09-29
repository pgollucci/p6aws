######################################################################
#<
#
# Function:
#      = p6_aws_cognito_idp_reset_user_password_admin(user_pool_id, username)
#
# Arg(s):
#    user_pool_id - 
#    username - 
#
#
#>
######################################################################
p6_aws_cognito_idp_reset_user_password_admin() {
    local user_pool_id="$1"
    local username="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp admin-reset-user-password --user-pool-id $user_pool_id --username $username "$@"
}