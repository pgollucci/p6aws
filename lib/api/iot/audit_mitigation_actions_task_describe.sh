p6_aws_iot_audit_mitigation_actions_task_describe() {
    local task_id="$1"
    shift 1

    p6_run_read_cmd aws iot describe-audit-mitigation-actions-task --task-id $task_id "$@"
}
