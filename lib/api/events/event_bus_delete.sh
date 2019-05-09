p6_aws_events_event_bus_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws events delete-event-bus --name $name "$@"
}
