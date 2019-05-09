p6_aws_resource_groups_group_update() {
    local group_name="$1"
    shift 1

    p6_log_or_run aws resource-groups update-group --group-name $group_name "$@"
}
