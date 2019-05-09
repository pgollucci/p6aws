p6_aws_fms_policy_get() {
    local policy_id="$1"
    shift 1

    p6_log_and_run aws fms get-policy --policy-id $policy_id "$@"
}
