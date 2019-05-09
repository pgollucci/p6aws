p6_aws_logs_query_stop() {
    local query_id="$1"
    shift 1

    p6_log_or_run aws logs stop-query --query-id $query_id "$@"
}
