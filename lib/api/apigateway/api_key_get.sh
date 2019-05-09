p6_aws_apigateway_api_key_get() {
    local api_key="$1"
    shift 1

    p6_run_read_cmd aws apigateway get-api-key --api-key $api_key "$@"
}
