######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_request_validator_create(rest_api_id)
#
# Arg(s):
#    rest_api_id - 
#
#
#>
######################################################################
p6_aws_apigateway_request_validator_create() {
    local rest_api_id="$1"
    shift 1

    p6_run_write_cmd aws apigateway create-request-validator --rest-api-id $rest_api_id "$@"
}