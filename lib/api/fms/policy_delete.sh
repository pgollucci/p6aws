p6_aws_fms_policy_delete() {
    local policy_id="$1"
    shift 1

    p6_log_or_run aws fms delete-policy --policy-id $policy_id "$@"
}
