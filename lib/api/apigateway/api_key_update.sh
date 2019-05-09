p6_aws_apigateway_api_key_update() {
    local api_key="$1"
    shift 1

    p6_run_write_cmd aws apigateway update-api-key --api-key $api_key "$@"
}
