p6_aws_iot_things_in_thing_group_list() {
    local thing_group_name="$1"
    shift 1

    p6_log_and_run aws iot list-things-in-thing-group --thing-group-name $thing_group_name "$@"
}
