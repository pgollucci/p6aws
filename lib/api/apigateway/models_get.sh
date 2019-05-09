p6_aws_apigateway_models_get() {
    local rest_api_id="$1"
    shift 1

    p6_run_read_cmd aws apigateway get-models --rest-api-id $rest_api_id "$@"
}
