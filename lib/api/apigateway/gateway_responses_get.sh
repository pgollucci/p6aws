######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_gateway_responses_get(rest_api_id)
#
# Arg(s):
#    rest_api_id - 
#
#
#>
######################################################################
p6_aws_apigateway_gateway_responses_get() {
    local rest_api_id="$1"
    shift 1

    p6_run_read_cmd aws apigateway get-gateway-responses --rest-api-id $rest_api_id "$@"
}