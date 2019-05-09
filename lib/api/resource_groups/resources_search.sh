p6_aws_resource_groups_resources_search() {
    local resource_query="$1"
    shift 1

    p6_log_or_run aws resource-groups search-resources --resource-query $resource_query "$@"
}
