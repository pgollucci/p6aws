p6_aws_apigatewayv2_route_response_update() {
    local api_id="$1"
    local route_id="$2"
    local route_response_id="$3"
    shift 3

    p6_run_write_cmd aws apigatewayv2 update-route-response --api-id $api_id --route-id $route_id --route-response-id $route_response_id "$@"
}
