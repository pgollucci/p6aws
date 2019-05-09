p6_aws_pinpoint_events_put() {
    local application_id="$1"
    local events_request="$2"
    shift 2

    p6_log_or_run aws pinpoint put-events --application-id $application_id --events-request $events_request "$@"
}
