p6_aws_organizations_policy_detach() {
    local policy_id="$1"
    local target_id="$2"
    shift 2

    p6_log_or_run aws organizations detach-policy --policy-id $policy_id --target-id $target_id "$@"
}
