p6_aws_iot_policy_detach() {
    local policy_name="$1"
    local target="$2"
    shift 2

    p6_log_or_run aws iot detach-policy --policy-name $policy_name --target $target "$@"
}
