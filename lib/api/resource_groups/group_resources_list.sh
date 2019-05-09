p6_aws_resource_groups_group_resources_list() {
    local group_name="$1"
    shift 1

    p6_run_read_cmd aws resource-groups list-group-resources --group-name $group_name "$@"
}
