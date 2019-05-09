p6_aws_iot_dynamic_thing_group_update() {
    local thing_group_name="$1"
    local thing_group_properties="$2"
    shift 2

    p6_log_or_run aws iot update-dynamic-thing-group --thing-group-name $thing_group_name --thing-group-properties $thing_group_properties "$@"
}
