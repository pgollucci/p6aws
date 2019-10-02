######################################################################
#<
#
# Function:
#	p6_aws_apigateway_gateway_response_put(rest_api_id, response_type)
#
#  Args:
#	rest_api_id - 
#	response_type - 
#
#>
######################################################################
p6_aws_apigateway_gateway_response_put() {
    local rest_api_id="$1"
    local response_type="$2"
    shift 2

    p6_run_write_cmd aws apigateway put-gateway-response --rest-api-id $rest_api_id --response-type $response_type "$@"
}