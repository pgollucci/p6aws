p6_aws_cognito_identity_open_id_token_get() {
    local identity_id="$1"
    shift 1

    p6_run_read_cmd aws cognito-identity get-open-id-token --identity-id $identity_id "$@"
}
