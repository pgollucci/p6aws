p6_aws_iot_thing_registration_task_stop() {
    local task_id="$1"
    shift 1

    p6_log_or_run aws iot stop-thing-registration-task --task-id $task_id "$@"
}
