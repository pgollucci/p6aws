p6_aws_resource_groups_group_create() {
    local name="$1"
    local resource_query="$2"
    shift 2

    p6_log_or_run aws resource-groups create-group --name $name --resource-query $resource_query "$@"
}
