p6_aws_workmail_groups_list() {
    local organization_id="$1"
    shift 1

    p6_run_read_cmd aws workmail list-groups --organization-id $organization_id "$@"
}
