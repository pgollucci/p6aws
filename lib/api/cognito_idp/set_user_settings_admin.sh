######################################################################
#<
#
# Function:
#      = p6_aws_cognito_idp_set_user_settings_admin(user_pool_id, username, mfa_options)
#
# Arg(s):
#    user_pool_id - 
#    username - 
#    mfa_options - 
#
#
#>
######################################################################
p6_aws_cognito_idp_set_user_settings_admin() {
    local user_pool_id="$1"
    local username="$2"
    local mfa_options="$3"
    shift 3

    p6_run_write_cmd aws cognito-idp admin-set-user-settings --user-pool-id $user_pool_id --username $username --mfa-options $mfa_options "$@"
}