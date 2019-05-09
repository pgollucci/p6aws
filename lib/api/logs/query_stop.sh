p6_aws_logs_query_stop() {
    local query_id="$1"
    shift 1

    p6_run_write_cmd aws logs stop-query --query-id $query_id "$@"
}
