######################################################################
#<
#
# Function:
#	p6_aws_cognito_idp_risk_configuration_set(user_pool_id)
#
#  Args:
#	user_pool_id - 
#
#>
######################################################################
p6_aws_cognito_idp_risk_configuration_set() {
    local user_pool_id="$1"
    shift 1

    p6_run_write_cmd aws cognito-idp set-risk-configuration --user-pool-id $user_pool_id "$@"
}