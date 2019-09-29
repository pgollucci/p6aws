######################################################################
#<
#
# Function:
#      = p6_aws_apigateway_model_delete(rest_api_id, model_name)
#
# Arg(s):
#    rest_api_id - 
#    model_name - 
#
#
#>
######################################################################
p6_aws_apigateway_model_delete() {
    local rest_api_id="$1"
    local model_name="$2"
    shift 2

    p6_run_write_cmd aws apigateway delete-model --rest-api-id $rest_api_id --model-name $model_name "$@"
}