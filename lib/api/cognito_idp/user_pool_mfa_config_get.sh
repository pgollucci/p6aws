######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_user_pool_mfa_config_get(user_pool_id)
#
#  Args:
#	user_pool_id - 
#
#>
######################################################################
p6_aws_cognito_idp_user_pool_mfa_config_get() {
    local user_pool_id="$1"
    shift 1

    p6_run_read_cmd aws cognito-idp get-user-pool-mfa-config --user-pool-id $user_pool_id "$@"
}