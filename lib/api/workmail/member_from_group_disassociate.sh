p6_aws_workmail_member_from_group_disassociate() {
    local organization_id="$1"
    local group_id="$2"
    local member_id="$3"
    shift 3

    p6_log_or_run aws workmail disassociate-member-from-group --organization-id $organization_id --group-id $group_id --member-id $member_id "$@"
}
