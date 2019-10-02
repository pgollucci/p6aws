######################################################################
#<
#
# Function:
#	p6_aws_apigateway_rest_api_update(rest_api_id)
#
#  Args:
#	rest_api_id - 
#
#>
######################################################################
p6_aws_apigateway_rest_api_update() {
    local rest_api_id="$1"
    shift 1

    p6_run_write_cmd aws apigateway update-rest-api --rest-api-id $rest_api_id "$@"
}