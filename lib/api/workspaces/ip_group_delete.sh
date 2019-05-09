p6_aws_workspaces_ip_group_delete() {
    local group_id="$1"
    shift 1

    p6_log_or_run aws workspaces delete-ip-group --group-id $group_id "$@"
}
