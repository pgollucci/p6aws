p6_aws_pinpoint_email_deliverability_test_report_get() {
    local report_id="$1"
    shift 1

    p6_run_read_cmd aws pinpoint-email get-deliverability-test-report --report-id $report_id "$@"
}
