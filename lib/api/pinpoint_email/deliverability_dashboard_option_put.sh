p6_aws_pinpoint_email_deliverability_dashboard_option_put() {
    local dashboard_enabled="$1"
    shift 1

    p6_log_or_run aws pinpoint-email put-deliverability-dashboard-option --dashboard-enabled $dashboard_enabled "$@"
}
