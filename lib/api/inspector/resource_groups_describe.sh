p6_aws_inspector_resource_groups_describe() {
    local resource_group_arns="$1"
    shift 1

    p6_run_read_cmd aws inspector describe-resource-groups --resource-group-arns $resource_group_arns "$@"
}
