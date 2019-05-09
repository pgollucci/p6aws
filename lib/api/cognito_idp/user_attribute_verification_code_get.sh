p6_aws_cognito_idp_user_attribute_verification_code_get() {
    local access_token="$1"
    local attribute_name="$2"
    shift 2

    p6_run_read_cmd aws cognito-idp get-user-attribute-verification-code --access-token $access_token --attribute-name $attribute_name "$@"
}
