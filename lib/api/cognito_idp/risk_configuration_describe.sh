p6_aws_cognito_idp_risk_configuration_describe() {
    local user_pool_id="$1"
    shift 1

    p6_run_read_cmd aws cognito-idp describe-risk-configuration --user-pool-id $user_pool_id "$@"
}
