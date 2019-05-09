p6_aws_pinpoint_email_domain_statistics_report_get() {
    local domain="$1"
    local start_date="$2"
    local end_date="$3"
    shift 3

    p6_run_read_cmd aws pinpoint-email get-domain-statistics-report --domain $domain --start-date $start_date --end-date $end_date "$@"
}
