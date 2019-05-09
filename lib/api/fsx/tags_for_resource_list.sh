p6_aws_fsx_tags_for_resource_list() {
    local resource_arn="$1"
    shift 1

    p6_log_and_run aws fsx list-tags-for-resource --resource-arn $resource_arn "$@"
}
