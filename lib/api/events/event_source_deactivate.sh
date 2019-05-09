p6_aws_events_event_source_deactivate() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws events deactivate-event-source --name $name "$@"
}
