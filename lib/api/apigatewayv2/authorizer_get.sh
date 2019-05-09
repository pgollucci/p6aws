p6_aws_apigatewayv2_authorizer_get() {
    local api_id="$1"
    local authorizer_id="$2"
    shift 2

    p6_run_read_cmd aws apigatewayv2 get-authorizer --api-id $api_id --authorizer-id $authorizer_id "$@"
}
