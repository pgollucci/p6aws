p6_aws_apigatewayv2_api_delete() {
    local api_id="$1"
    shift 1

    p6_run_write_cmd aws apigatewayv2 delete-api --api-id $api_id "$@"
}
