######################################################################
#<
#
# Function:
#      = p6_aws_cognito_idp_set_user_mfa_preference_admin(username, user_pool_id)
#
# Arg(s):
#    username - 
#    user_pool_id - 
#
#
#>
######################################################################
p6_aws_cognito_idp_set_user_mfa_preference_admin() {
    local username="$1"
    local user_pool_id="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp admin-set-user-mfa-preference --username $username --user-pool-id $user_pool_id "$@"
}