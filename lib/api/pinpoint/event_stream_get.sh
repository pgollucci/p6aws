p6_aws_pinpoint_event_stream_get() {
    local application_id="$1"
    shift 1

    p6_run_read_cmd aws pinpoint get-event-stream --application-id $application_id "$@"
}
