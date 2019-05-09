p6_aws_events_event_sources_list() {

    p6_run_read_cmd aws events list-event-sources "$@"
}
