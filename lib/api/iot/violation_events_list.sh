p6_aws_iot_violation_events_list() {
    local start_time="$1"
    local end_time="$2"
    shift 2

    p6_log_and_run aws iot list-violation-events --start-time $start_time --end-time $end_time "$@"
}
