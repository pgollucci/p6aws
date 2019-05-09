p6_aws_apigateway_documentation_version_delete() {
    local rest_api_id="$1"
    local documentation_version="$2"
    shift 2

    p6_run_write_cmd aws apigateway delete-documentation-version --rest-api-id $rest_api_id --documentation-version $documentation_version "$@"
}
