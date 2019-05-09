p6_aws_resource_groups_tags_get() {
    local arn="$1"
    shift 1

    p6_log_and_run aws resource-groups get-tags --arn $arn "$@"
}
