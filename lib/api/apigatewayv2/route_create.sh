p6_aws_apigatewayv2_route_create() {
    local api_id="$1"
    local route_key="$2"
    shift 2

    p6_run_write_cmd aws apigatewayv2 create-route --api-id $api_id --route-key $route_key "$@"
}
