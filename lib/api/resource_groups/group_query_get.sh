p6_aws_resource_groups_group_query_get() {
    local group_name="$1"
    shift 1

    p6_log_and_run aws resource-groups get-group-query --group-name $group_name "$@"
}
