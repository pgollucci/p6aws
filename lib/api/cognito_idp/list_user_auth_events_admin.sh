######################################################################
#<
#
# Function:
#      = p6_aws_cognito_idp_list_user_auth_events_admin(user_pool_id, username)
#
# Arg(s):
#    user_pool_id - 
#    username - 
#
#
#>
######################################################################
p6_aws_cognito_idp_list_user_auth_events_admin() {
    local user_pool_id="$1"
    local username="$2"
    shift 2

    p6_run_read_cmd aws cognito-idp admin-list-user-auth-events --user-pool-id $user_pool_id --username $username "$@"
}