p6_aws_events_partner_event_source_accounts_list() {
    local event_source_name="$1"
    shift 1

    p6_run_read_cmd aws events list-partner-event-source-accounts --event-source-name $event_source_name "$@"
}
