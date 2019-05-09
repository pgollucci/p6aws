p6_aws_resource_groups_group_query_update() {
    local group_name="$1"
    local resource_query="$2"
    shift 2

    p6_log_or_run aws resource-groups update-group-query --group-name $group_name --resource-query $resource_query "$@"
}
