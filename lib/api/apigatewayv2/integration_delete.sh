######################################################################
#<
#
# Function:
#      = p6_aws_apigatewayv2_integration_delete(api_id, integration_id)
#
# Arg(s):
#    api_id - 
#    integration_id - 
#
#
#>
######################################################################
p6_aws_apigatewayv2_integration_delete() {
    local api_id="$1"
    local integration_id="$2"
    shift 2

    p6_run_write_cmd aws apigatewayv2 delete-integration --api-id $api_id --integration-id $integration_id "$@"
}