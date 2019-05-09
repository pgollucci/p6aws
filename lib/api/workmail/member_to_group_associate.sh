p6_aws_workmail_member_to_group_associate() {
    local organization_id="$1"
    local group_id="$2"
    local member_id="$3"
    shift 3

    p6_log_or_run aws workmail associate-member-to-group --organization-id $organization_id --group-id $group_id --member-id $member_id "$@"
}
