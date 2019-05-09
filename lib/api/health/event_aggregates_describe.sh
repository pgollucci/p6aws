p6_aws_health_event_aggregates_describe() {
    local aggregate_field="$1"
    shift 1

    p6_log_and_run aws health describe-event-aggregates --aggregate-field $aggregate_field "$@"
}
