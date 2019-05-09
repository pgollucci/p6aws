p6_aws_pinpoint_event_stream_put() {
    local application_id="$1"
    local write_event_stream="$2"
    shift 2

    p6_run_write_cmd aws pinpoint put-event-stream --application-id $application_id --write-event-stream $write_event_stream "$@"
}
