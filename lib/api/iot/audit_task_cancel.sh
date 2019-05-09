p6_aws_iot_audit_task_cancel() {
    local task_id="$1"
    shift 1

    p6_log_or_run aws iot cancel-audit-task --task-id $task_id "$@"
}
