p6_aws_mgh_application_state_notify() {
    local application_id="$1"
    local status="$2"
    shift 2

    p6_log_or_run aws mgh notify-application-state --application-id $application_id --status $status "$@"
}
