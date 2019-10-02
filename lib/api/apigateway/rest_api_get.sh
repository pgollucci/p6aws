######################################################################
#<
#
# Function:
#	p6_aws_apigateway_rest_api_get(rest_api_id)
#
#  Args:
#	rest_api_id - 
#
#>
######################################################################
p6_aws_apigateway_rest_api_get() {
    local rest_api_id="$1"
    shift 1

    p6_run_read_cmd aws apigateway get-rest-api --rest-api-id $rest_api_id "$@"
}