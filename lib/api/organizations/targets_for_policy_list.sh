p6_aws_organizations_targets_for_policy_list() {
    local policy_id="$1"
    shift 1

    p6_run_read_cmd aws organizations list-targets-for-policy --policy-id $policy_id "$@"
}
