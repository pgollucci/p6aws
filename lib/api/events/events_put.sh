p6_aws_events_events_put() {
    local entries="$1"
    shift 1

    p6_log_or_run aws events put-events --entries $entries "$@"
}
