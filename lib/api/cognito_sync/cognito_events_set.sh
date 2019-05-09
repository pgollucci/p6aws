p6_aws_cognito_sync_cognito_events_set() {
    local identity_pool_id="$1"
    local events="$2"
    shift 2

    p6_run_write_cmd aws cognito-sync set-cognito-events --identity-pool-id $identity_pool_id --events $events "$@"
}
