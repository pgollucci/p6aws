p6_aws_cognito_identity_identity_describe() {
    local identity_id="$1"
    shift 1

    p6_run_read_cmd aws cognito-identity describe-identity --identity-id $identity_id "$@"
}
