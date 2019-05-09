p6_aws_logs_query_results_get() {
    local query_id="$1"
    shift 1

    p6_log_and_run aws logs get-query-results --query-id $query_id "$@"
}
