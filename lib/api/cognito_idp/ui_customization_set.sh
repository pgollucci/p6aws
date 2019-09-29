######################################################################
#<
#
# Function:
#      = p6_aws_cognito_idp_ui_customization_set(user_pool_id)
#
# Arg(s):
#    user_pool_id - 
#
#
#>
######################################################################
p6_aws_cognito_idp_ui_customization_set() {
    local user_pool_id="$1"
    shift 1

    p6_run_write_cmd aws cognito-idp set-ui-customization --user-pool-id $user_pool_id "$@"
}