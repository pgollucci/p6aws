p6_aws_resource_groups_group_delete() {
    local group_name="$1"
    shift 1

    p6_run_write_cmd aws resource-groups delete-group --group-name $group_name "$@"
}
