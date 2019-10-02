######################################################################
#<
#
# Function:
#	p6_aws_apigateway_model_template_get(rest_api_id, model_name)
#
#  Args:
#	rest_api_id - 
#	model_name - 
#
#>
######################################################################
p6_aws_apigateway_model_template_get() {
    local rest_api_id="$1"
    local model_name="$2"
    shift 2

    p6_run_read_cmd aws apigateway get-model-template --rest-api-id $rest_api_id --model-name $model_name "$@"
}