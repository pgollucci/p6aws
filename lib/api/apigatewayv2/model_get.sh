p6_aws_apigatewayv2_model_get() {
    local api_id="$1"
    local model_id="$2"
    shift 2

    p6_run_read_cmd aws apigatewayv2 get-model --api-id $api_id --model-id $model_id "$@"
}
