p6_aws_clouddirectory_tags_for_resource_list() {
    local resource_arn="$1"
    shift 1

    p6_run_read_cmd aws clouddirectory list-tags-for-resource --resource-arn $resource_arn "$@"
}
