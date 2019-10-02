######################################################################
#<
#
# Function:
#	p6_aws_apigateway_request_validator_get(rest_api_id, request_validator_id)
#
#  Args:
#	rest_api_id - 
#	request_validator_id - 
#
#>
######################################################################
p6_aws_apigateway_request_validator_get() {
    local rest_api_id="$1"
    local request_validator_id="$2"
    shift 2

    p6_run_read_cmd aws apigateway get-request-validator --rest-api-id $rest_api_id --request-validator-id $request_validator_id "$@"
}