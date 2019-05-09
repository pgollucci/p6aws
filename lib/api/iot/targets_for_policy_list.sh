p6_aws_iot_targets_for_policy_list() {
    local policy_name="$1"
    shift 1

    p6_run_read_cmd aws iot list-targets-for-policy --policy-name $policy_name "$@"
}
