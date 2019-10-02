######################################################################
#<
#
# Function:
#	p6_aws_apigatewayv2_route_response_create(api_id, route_id, route_response_key)
#
#  Args:
#	api_id - 
#	route_id - 
#	route_response_key - 
#
#>
######################################################################
p6_aws_apigatewayv2_route_response_create() {
    local api_id="$1"
    local route_id="$2"
    local route_response_key="$3"
    shift 3

    p6_run_write_cmd aws apigatewayv2 create-route-response --api-id $api_id --route-id $route_id --route-response-key $route_response_key "$@"
}