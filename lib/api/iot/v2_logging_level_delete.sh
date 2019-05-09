p6_aws_iot_v2_logging_level_delete() {
    local target_type="$1"
    local target_name="$2"
    shift 2

    p6_log_or_run aws iot delete-v2-logging-level --target-type $target_type --target-name $target_name "$@"
}
