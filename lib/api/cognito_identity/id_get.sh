p6_aws_cognito_identity_id_get() {
    local identity_pool_id="$1"
    shift 1

    p6_run_read_cmd aws cognito-identity get-id --identity-pool-id $identity_pool_id "$@"
}
