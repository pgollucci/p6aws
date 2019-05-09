p6_aws_iot_thing_from_thing_group_remove() {

    p6_log_or_run aws iot remove-thing-from-thing-group "$@"
}
