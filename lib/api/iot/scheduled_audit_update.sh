p6_aws_iot_scheduled_audit_update() {
    local scheduled_audit_name="$1"
    shift 1

    p6_log_or_run aws iot update-scheduled-audit --scheduled-audit-name $scheduled_audit_name "$@"
}
