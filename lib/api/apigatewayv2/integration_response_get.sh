######################################################################
#<
#
# Function:
#      = p6_aws_apigatewayv2_integration_response_get(api_id, integration_id, integration_response_id)
#
# Arg(s):
#    api_id - 
#    integration_id - 
#    integration_response_id - 
#
#
#>
######################################################################
p6_aws_apigatewayv2_integration_response_get() {
    local api_id="$1"
    local integration_id="$2"
    local integration_response_id="$3"
    shift 3

    p6_run_read_cmd aws apigatewayv2 get-integration-response --api-id $api_id --integration-id $integration_id --integration-response-id $integration_response_id "$@"
}