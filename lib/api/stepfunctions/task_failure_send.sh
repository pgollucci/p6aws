p6_aws_stepfunctions_task_failure_send() {
    local task_token="$1"
    shift 1

    p6_log_or_run aws stepfunctions send-task-failure --task-token $task_token "$@"
}
