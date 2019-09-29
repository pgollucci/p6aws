######################################################################
#<
#
# Function:
#      = p6_aws_cognito_idp_ui_customization_get(user_pool_id)
#
# Arg(s):
#    user_pool_id - 
#
#
#>
######################################################################
p6_aws_cognito_idp_ui_customization_get() {
    local user_pool_id="$1"
    shift 1

    p6_run_read_cmd aws cognito-idp get-ui-customization --user-pool-id $user_pool_id "$@"
}