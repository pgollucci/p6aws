p6_aws_apigateway_tags_get() {
    local resource_arn="$1"
    shift 1

    p6_run_read_cmd aws apigateway get-tags --resource-arn $resource_arn "$@"
}
