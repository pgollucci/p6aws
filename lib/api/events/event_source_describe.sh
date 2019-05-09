p6_aws_events_event_source_describe() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws events describe-event-source --name $name "$@"
}
