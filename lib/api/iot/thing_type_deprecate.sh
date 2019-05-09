p6_aws_iot_thing_type_deprecate() {
    local thing_type_name="$1"
    shift 1

    p6_run_write_cmd aws iot deprecate-thing-type --thing-type-name $thing_type_name "$@"
}
