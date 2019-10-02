######################################################################
#<
#
# Function:
#	p6_aws_apigatewayv2_models_get(api_id)
#
#  Args:
#	api_id - 
#
#>
######################################################################
p6_aws_apigatewayv2_models_get() {
    local api_id="$1"
    shift 1

    p6_run_read_cmd aws apigatewayv2 get-models --api-id $api_id "$@"
}