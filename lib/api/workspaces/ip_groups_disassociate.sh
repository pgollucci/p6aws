p6_aws_workspaces_ip_groups_disassociate() {
    local directory_id="$1"
    local group_ids="$2"
    shift 2

    p6_log_or_run aws workspaces disassociate-ip-groups --directory-id $directory_id --group-ids $group_ids "$@"
}
