p6_aws_iot_scheduled_audit_delete() {
    local scheduled_audit_name="$1"
    shift 1

    p6_run_write_cmd aws iot delete-scheduled-audit --scheduled-audit-name $scheduled_audit_name "$@"
}
