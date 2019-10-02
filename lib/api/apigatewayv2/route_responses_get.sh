######################################################################
#<
#
# Function:
#	p6_aws_apigatewayv2_route_responses_get(api_id, route_id)
#
#  Args:
#	api_id - 
#	route_id - 
#
#>
######################################################################
p6_aws_apigatewayv2_route_responses_get() {
    local api_id="$1"
    local route_id="$2"
    shift 2

    p6_run_read_cmd aws apigatewayv2 get-route-responses --api-id $api_id --route-id $route_id "$@"
}