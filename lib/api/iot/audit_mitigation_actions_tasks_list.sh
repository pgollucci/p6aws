p6_aws_iot_audit_mitigation_actions_tasks_list() {
    local start_time="$1"
    local end_time="$2"
    shift 2

    p6_run_read_cmd aws iot list-audit-mitigation-actions-tasks --start-time $start_time --end-time $end_time "$@"
}
