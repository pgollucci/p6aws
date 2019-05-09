p6_aws_iot_audit_finding_describe() {
    local finding_id="$1"
    shift 1

    p6_run_read_cmd aws iot describe-audit-finding --finding-id $finding_id "$@"
}
