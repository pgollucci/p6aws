p6_aws_workspaces_ip_rules_revoke() {
    local group_id="$1"
    local user_rules="$2"
    shift 2

    p6_run_write_cmd aws workspaces revoke-ip-rules --group-id $group_id --user-rules $user_rules "$@"
}
