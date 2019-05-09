p6_aws_iot_mitigation_action_describe() {
    local action_name="$1"
    shift 1

    p6_run_read_cmd aws iot describe-mitigation-action --action-name $action_name "$@"
}
