p6_aws_cognito_idp_user_attributes_update() {
    local user_attributes="$1"
    local access_token="$2"
    shift 2

    p6_run_write_cmd aws cognito-idp update-user-attributes --user-attributes $user_attributes --access-token $access_token "$@"
}
