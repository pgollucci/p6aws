p6_aws_events_partner_event_source_create() {
    local name="$1"
    local account="$2"
    shift 2

    p6_run_write_cmd aws events create-partner-event-source --name $name --account $account "$@"
}
