p6_aws_backup_tags_list() {
    local resource_arn="$1"
    shift 1

    p6_run_read_cmd aws backup list-tags --resource-arn $resource_arn "$@"
}
