p6_aws_workmail_users_list() {
    local organization_id="$1"
    shift 1

    p6_run_read_cmd aws workmail list-users --organization-id $organization_id "$@"
}
