p6_aws_apigateway_model_get() {
    local rest_api_id="$1"
    local model_name="$2"
    shift 2

    p6_run_read_cmd aws apigateway get-model --rest-api-id $rest_api_id --model-name $model_name "$@"
}
