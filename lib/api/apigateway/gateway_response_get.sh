######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_gateway_response_get(rest_api_id, response_type)
#
# Arg(s):
#    rest_api_id - 
#    response_type - 
#
#
#>
######################################################################
p6_aws_apigateway_gateway_response_get() {
    local rest_api_id="$1"
    local response_type="$2"
    shift 2

    p6_run_read_cmd aws apigateway get-gateway-response --rest-api-id $rest_api_id --response-type $response_type "$@"
}