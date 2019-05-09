p6_aws_iot_scheduled_audit_create() {
    local frequency="$1"
    local target_check_names="$2"
    local scheduled_audit_name="$3"
    shift 3

    p6_log_or_run aws iot create-scheduled-audit --frequency $frequency --target-check-names $target_check_names --scheduled-audit-name $scheduled_audit_name "$@"
}
