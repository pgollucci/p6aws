p6_aws_apigateway_rest_api_put() {
    local rest_api_id="$1"
    local body="$2"
    shift 2

    p6_run_write_cmd aws apigateway put-rest-api --rest-api-id $rest_api_id --body $body "$@"
}
