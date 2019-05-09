p6_aws_logs_export_task_cancel() {
    local task_id="$1"
    shift 1

    p6_log_or_run aws logs cancel-export-task --task-id $task_id "$@"
}
