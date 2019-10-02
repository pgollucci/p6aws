######################################################################
#<
#
# Function:
#	p6_aws_apigatewayv2_model_template_get(api_id, model_id)
#
#  Args:
#	api_id - 
#	model_id - 
#
#>
######################################################################
p6_aws_apigatewayv2_model_template_get() {
    local api_id="$1"
    local model_id="$2"
    shift 2

    p6_run_read_cmd aws apigatewayv2 get-model-template --api-id $api_id --model-id $model_id "$@"
}