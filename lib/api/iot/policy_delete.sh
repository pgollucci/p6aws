p6_aws_iot_policy_delete() {
    local policy_name="$1"
    shift 1

    p6_run_write_cmd aws iot delete-policy --policy-name $policy_name "$@"
}
