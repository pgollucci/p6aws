p6_aws_workspaces_ip_groups_associate() {
    local directory_id="$1"
    local group_ids="$2"
    shift 2

    p6_run_write_cmd aws workspaces associate-ip-groups --directory-id $directory_id --group-ids $group_ids "$@"
}
