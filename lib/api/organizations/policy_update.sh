p6_aws_organizations_policy_update() {
    local policy_id="$1"
    shift 1

    p6_log_or_run aws organizations update-policy --policy-id $policy_id "$@"
}
