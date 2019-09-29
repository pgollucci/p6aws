######################################################################
#<
#
# Function:
#      = p6_aws_cognito_idp_delete_user_attributes_admin(user_pool_id, username, user_attribute_names)
#
# Arg(s):
#    user_pool_id - 
#    username - 
#    user_attribute_names - 
#
#
#>
######################################################################
p6_aws_cognito_idp_delete_user_attributes_admin() {
    local user_pool_id="$1"
    local username="$2"
    local user_attribute_names="$3"
    shift 3

    p6_run_write_cmd aws cognito-idp admin-delete-user-attributes --user-pool-id $user_pool_id --username $username --user-attribute-names $user_attribute_names "$@"
}