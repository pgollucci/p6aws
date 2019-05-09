p6_aws_pinpoint_email_deliverability_test_report_get() {
    local report_id="$1"
    shift 1

    p6_log_and_run aws pinpoint-email get-deliverability-test-report --report-id $report_id "$@"
}
