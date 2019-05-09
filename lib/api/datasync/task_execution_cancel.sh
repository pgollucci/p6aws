p6_aws_datasync_task_execution_cancel() {
    local task_execution_arn="$1"
    shift 1

    p6_run_write_cmd aws datasync cancel-task-execution --task-execution-arn $task_execution_arn "$@"
}
