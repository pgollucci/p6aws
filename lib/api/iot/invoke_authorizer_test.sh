p6_aws_iot_invoke_authorizer_test() {
    local authorizer_name="$1"
    local token="$2"
    local token_signature="$3"
    shift 3

    p6_log_or_run aws iot test-invoke-authorizer --authorizer-name $authorizer_name --token $token --token-signature $token_signature "$@"
}
