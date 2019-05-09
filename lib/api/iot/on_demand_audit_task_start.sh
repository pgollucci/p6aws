p6_aws_iot_on_demand_audit_task_start() {
    local target_check_names="$1"
    shift 1

    p6_log_or_run aws iot start-on-demand-audit-task --target-check-names $target_check_names "$@"
}
