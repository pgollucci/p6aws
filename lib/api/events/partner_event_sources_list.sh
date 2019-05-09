p6_aws_events_partner_event_sources_list() {
    local name_prefix="$1"
    shift 1

    p6_run_read_cmd aws events list-partner-event-sources --name-prefix $name_prefix "$@"
}
