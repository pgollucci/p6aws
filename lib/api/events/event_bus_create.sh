p6_aws_events_event_bus_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws events create-event-bus --name $name "$@"
}
