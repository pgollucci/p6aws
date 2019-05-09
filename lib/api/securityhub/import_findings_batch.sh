p6_aws_securityhub_import_findings_batch() {
    local findings="$1"
    shift 1

    p6_log_or_run aws securityhub batch-import-findings --findings $findings "$@"
}
