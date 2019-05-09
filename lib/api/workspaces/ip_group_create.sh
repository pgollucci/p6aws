p6_aws_workspaces_ip_group_create() {
    local group_name="$1"
    shift 1

    p6_log_or_run aws workspaces create-ip-group --group-name $group_name "$@"
}
