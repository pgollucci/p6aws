p6_aws_logs_metric_filter_test() {
    local filter_pattern="$1"
    local log_event_messages="$2"
    shift 2

    p6_log_or_run aws logs test-metric-filter --filter-pattern $filter_pattern --log-event-messages $log_event_messages "$@"
}
