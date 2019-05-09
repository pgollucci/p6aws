p6_aws_iot_audit_tasks_list() {
    local start_time="$1"
    local end_time="$2"
    shift 2

    p6_log_and_run aws iot list-audit-tasks --start-time $start_time --end-time $end_time "$@"
}
