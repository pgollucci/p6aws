p6_aws_workmail_group_describe() {
    local organization_id="$1"
    local group_id="$2"
    shift 2

    p6_run_read_cmd aws workmail describe-group --organization-id $organization_id --group-id $group_id "$@"
}
