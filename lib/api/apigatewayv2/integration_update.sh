######################################################################
#<
#
# Function:
#	p6_aws_apigatewayv2_integration_update(api_id, integration_id)
#
#  Args:
#	api_id - 
#	integration_id - 
#
#>
######################################################################
p6_aws_apigatewayv2_integration_update() {
    local api_id="$1"
    local integration_id="$2"
    shift 2

    p6_run_write_cmd aws apigatewayv2 update-integration --api-id $api_id --integration-id $integration_id "$@"
}