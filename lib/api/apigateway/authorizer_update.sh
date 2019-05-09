p6_aws_apigateway_authorizer_update() {
    local rest_api_id="$1"
    local authorizer_id="$2"
    shift 2

    p6_run_write_cmd aws apigateway update-authorizer --rest-api-id $rest_api_id --authorizer-id $authorizer_id "$@"
}
