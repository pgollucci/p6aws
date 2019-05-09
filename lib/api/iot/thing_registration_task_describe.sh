p6_aws_iot_thing_registration_task_describe() {
    local task_id="$1"
    shift 1

    p6_log_and_run aws iot describe-thing-registration-task --task-id $task_id "$@"
}
