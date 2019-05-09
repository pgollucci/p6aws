p6_aws_iot_audit_task_describe() {
    local task_id="$1"
    shift 1

    p6_log_and_run aws iot describe-audit-task --task-id $task_id "$@"
}
