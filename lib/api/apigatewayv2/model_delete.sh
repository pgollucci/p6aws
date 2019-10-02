######################################################################
#<
#
# Function:
#	p6_aws_apigatewayv2_model_delete(api_id, model_id)
#
#  Args:
#	api_id - 
#	model_id - 
#
#>
######################################################################
p6_aws_apigatewayv2_model_delete() {
    local api_id="$1"
    local model_id="$2"
    shift 2

    p6_run_write_cmd aws apigatewayv2 delete-model --api-id $api_id --model-id $model_id "$@"
}