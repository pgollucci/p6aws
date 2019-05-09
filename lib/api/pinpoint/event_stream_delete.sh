p6_aws_pinpoint_event_stream_delete() {
    local application_id="$1"
    shift 1

    p6_log_or_run aws pinpoint delete-event-stream --application-id $application_id "$@"
}
