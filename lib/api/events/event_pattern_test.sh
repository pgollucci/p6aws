p6_aws_events_event_pattern_test() {
    local event_pattern="$1"
    local event="$2"
    shift 2

    p6_log_or_run aws events test-event-pattern --event-pattern $event_pattern --event $event "$@"
}
