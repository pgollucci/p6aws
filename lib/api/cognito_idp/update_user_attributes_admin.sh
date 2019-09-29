######################################################################
#<
#
# Function:
#      = p6_aws_cognito_idp_update_user_attributes_admin(user_pool_id, username, user_attributes)
#
# Arg(s):
#    user_pool_id - 
#    username - 
#    user_attributes - 
#
#
#>
######################################################################
p6_aws_cognito_idp_update_user_attributes_admin() {
    local user_pool_id="$1"
    local username="$2"
    local user_attributes="$3"
    shift 3

    p6_run_write_cmd aws cognito-idp admin-update-user-attributes --user-pool-id $user_pool_id --username $username --user-attributes $user_attributes "$@"
}