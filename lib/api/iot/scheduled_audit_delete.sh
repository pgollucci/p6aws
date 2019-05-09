p6_aws_iot_scheduled_audit_delete() {
    local scheduled_audit_name="$1"
    shift 1

    p6_log_or_run aws iot delete-scheduled-audit --scheduled-audit-name $scheduled_audit_name "$@"
}
