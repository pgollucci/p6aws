######################################################################
#<
#
# Function:
#	p6_aws_apigatewayv2_api_update(api_id)
#
#  Args:
#	api_id - 
#
#>
######################################################################
p6_aws_apigatewayv2_api_update() {
    local api_id="$1"
    shift 1

    p6_run_write_cmd aws apigatewayv2 update-api --api-id $api_id "$@"
}