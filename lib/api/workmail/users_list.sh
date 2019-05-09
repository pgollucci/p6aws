p6_aws_workmail_users_list() {
    local organization_id="$1"
    shift 1

    p6_log_and_run aws workmail list-users --organization-id $organization_id "$@"
}
