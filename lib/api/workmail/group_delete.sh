p6_aws_workmail_group_delete() {
    local organization_id="$1"
    local group_id="$2"
    shift 2

    p6_log_or_run aws workmail delete-group --organization-id $organization_id --group-id $group_id "$@"
}
