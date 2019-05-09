p6_aws_apigatewayv2_route_get() {
    local api_id="$1"
    local route_id="$2"
    shift 2

    p6_run_read_cmd aws apigatewayv2 get-route --api-id $api_id --route-id $route_id "$@"
}
