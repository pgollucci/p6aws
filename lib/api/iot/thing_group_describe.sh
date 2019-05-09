p6_aws_iot_thing_group_describe() {
    local thing_group_name="$1"
    shift 1

    p6_log_and_run aws iot describe-thing-group --thing-group-name $thing_group_name "$@"
}
