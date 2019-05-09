p6_aws_cognito_idp_sign_out_global() {
    local access_token="$1"
    shift 1

    p6_run_write_cmd aws cognito-idp global-sign-out --access-token $access_token "$@"
}
