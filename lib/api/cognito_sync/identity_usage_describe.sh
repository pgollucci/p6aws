p6_aws_cognito_sync_identity_usage_describe() {
    local identity_pool_id="$1"
    local identity_id="$2"
    shift 2

    p6_run_read_cmd aws cognito-sync describe-identity-usage --identity-pool-id $identity_pool_id --identity-id $identity_id "$@"
}
