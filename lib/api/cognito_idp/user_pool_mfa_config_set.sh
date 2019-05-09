p6_aws_cognito_idp_user_pool_mfa_config_set() {
    local user_pool_id="$1"
    shift 1

    p6_run_write_cmd aws cognito-idp set-user-pool-mfa-config --user-pool-id $user_pool_id "$@"
}
