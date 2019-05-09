p6_aws_iot_v2_logging_level_delete() {
    local target_type="$1"
    local target_name="$2"
    shift 2

    p6_run_write_cmd aws iot delete-v2-logging-level --target-type $target_type --target-name $target_name "$@"
}
