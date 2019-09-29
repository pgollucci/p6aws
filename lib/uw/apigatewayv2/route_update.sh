######################################################################
#<
#
# Function:
#      = p6_aws_apigatewayv2_key_required(api_id, route_id)
#
# Arg(s):
#    api_id - 
#    route_id - 
#
#
#>
######################################################################
p6_aws_apigatewayv2_key_required() {
        local api_id="$1"
        local route_id="$2"
        shift 2

    cond_log_and_run aws apigatewayv2 update-route --api-id $api_id --route-id $route_id --api-key-required "$@"
}
