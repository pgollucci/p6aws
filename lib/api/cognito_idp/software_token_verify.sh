p6_aws_cognito_idp_software_token_verify() {
    local user_code="$1"
    shift 1

    p6_run_write_cmd aws cognito-idp verify-software-token --user-code $user_code "$@"
}
