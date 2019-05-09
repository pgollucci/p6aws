p6_aws_iot_policy_attach() {
    local policy_name="$1"
    local target="$2"
    shift 2

    p6_run_write_cmd aws iot attach-policy --policy-name $policy_name --target $target "$@"
}
