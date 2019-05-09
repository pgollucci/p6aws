p6_aws_iot_data_thing_shadow_delete() {
    local thing_name="$1"
    shift 1

    p6_log_or_run aws iot-data delete-thing-shadow --thing-name $thing_name "$@"
}
