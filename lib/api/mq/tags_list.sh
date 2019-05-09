p6_aws_mq_tags_list() {
    local resource_arn="$1"
    shift 1

    p6_run_read_cmd aws mq list-tags --resource-arn $resource_arn "$@"
}
