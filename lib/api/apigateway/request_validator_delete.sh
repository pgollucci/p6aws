######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_request_validator_delete(rest_api_id, request_validator_id)
#
# Arg(s):
#    rest_api_id - 
#    request_validator_id - 
#
#
#>
######################################################################
p6_aws_apigateway_request_validator_delete() {
    local rest_api_id="$1"
    local request_validator_id="$2"
    shift 2

    p6_run_write_cmd aws apigateway delete-request-validator --rest-api-id $rest_api_id --request-validator-id $request_validator_id "$@"
}