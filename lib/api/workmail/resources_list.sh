p6_aws_workmail_resources_list() {
    local organization_id="$1"
    shift 1

    p6_log_and_run aws workmail list-resources --organization-id $organization_id "$@"
}
