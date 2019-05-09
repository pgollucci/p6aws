p6_aws_cognito_idp_user_settings_set() {
    local access_token="$1"
    local mfa_options="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp set-user-settings --access-token $access_token --mfa-options $mfa_options "$@"
}
