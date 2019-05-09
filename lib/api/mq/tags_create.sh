p6_aws_mq_tags_create() {
    local resource_arn="$1"
    shift 1

    p6_log_or_run aws mq create-tags --resource-arn $resource_arn "$@"
}
