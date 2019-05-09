p6_aws_organizations_policy_delete() {
    local policy_id="$1"
    shift 1

    p6_log_or_run aws organizations delete-policy --policy-id $policy_id "$@"
}
