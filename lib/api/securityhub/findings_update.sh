p6_aws_securityhub_findings_update() {
    local filters="$1"
    shift 1

    p6_log_or_run aws securityhub update-findings --filters $filters "$@"
}
