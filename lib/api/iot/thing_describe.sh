p6_aws_iot_thing_describe() {
    local thing_name="$1"
    shift 1

    p6_run_read_cmd aws iot describe-thing --thing-name $thing_name "$@"
}
