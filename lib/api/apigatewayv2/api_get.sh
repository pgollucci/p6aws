p6_aws_apigatewayv2_api_get() {
    local api_id="$1"
    shift 1

    p6_run_read_cmd aws apigatewayv2 get-api --api-id $api_id "$@"
}
