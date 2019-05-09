p6_aws_iot_thing_group_delete() {
    local thing_group_name="$1"
    shift 1

    p6_log_or_run aws iot delete-thing-group --thing-group-name $thing_group_name "$@"
}
