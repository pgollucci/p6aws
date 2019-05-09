p6_aws_apigateway_api_keys_import() {
    local body="$1"
    local format="$2"
    shift 2

    p6_run_write_cmd aws apigateway import-api-keys --body $body --format $format "$@"
}
