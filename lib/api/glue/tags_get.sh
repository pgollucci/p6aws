p6_aws_glue_tags_get() {
    local resource_arn="$1"
    shift 1

    p6_run_read_cmd aws glue get-tags --resource-arn $resource_arn "$@"
}
