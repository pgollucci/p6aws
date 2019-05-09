p6_aws_logs_query_results_get() {
    local query_id="$1"
    shift 1

    p6_run_read_cmd aws logs get-query-results --query-id $query_id "$@"
}
