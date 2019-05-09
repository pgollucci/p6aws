p6_aws_organizations_policy_describe() {
    local policy_id="$1"
    shift 1

    p6_log_and_run aws organizations describe-policy --policy-id $policy_id "$@"
}
