p6_aws_workspaces_ip_group_create() {
    local group_name="$1"
    shift 1

    p6_run_write_cmd aws workspaces create-ip-group --group-name $group_name "$@"
}
