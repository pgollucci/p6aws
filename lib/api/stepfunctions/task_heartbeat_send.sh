p6_aws_stepfunctions_task_heartbeat_send() {
    local task_token="$1"
    shift 1

    p6_run_write_cmd aws stepfunctions send-task-heartbeat --task-token $task_token "$@"
}
