p6_aws_workmail_group_members_list() {
    local organization_id="$1"
    local group_id="$2"
    shift 2

    p6_log_and_run aws workmail list-group-members --organization-id $organization_id --group-id $group_id "$@"
}
