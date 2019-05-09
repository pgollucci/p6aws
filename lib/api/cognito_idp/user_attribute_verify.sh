p6_aws_cognito_idp_user_attribute_verify() {
    local access_token="$1"
    local attribute_name="$2"
    local code="$3"
    shift 3

    p6_run_write_cmd aws cognito-idp verify-user-attribute --access-token $access_token --attribute-name $attribute_name --code $code "$@"
}
