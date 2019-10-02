######################################################################
#<
#
# Function:
#	p6_aws_apigateway_gateway_response_delete(rest_api_id, response_type)
#
#  Args:
#	rest_api_id - 
#	response_type - 
#
#>
######################################################################
p6_aws_apigateway_gateway_response_delete() {
    local rest_api_id="$1"
    local response_type="$2"
    shift 2

    p6_run_write_cmd aws apigateway delete-gateway-response --rest-api-id $rest_api_id --response-type $response_type "$@"
}