p6_aws_iot_policy_delete() {
    local policy_name="$1"
    shift 1

    p6_log_or_run aws iot delete-policy --policy-name $policy_name "$@"
}
