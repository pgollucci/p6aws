p6_aws_datasync_task_describe() {
    local task_arn="$1"
    shift 1

    p6_run_read_cmd aws datasync describe-task --task-arn $task_arn "$@"
}
