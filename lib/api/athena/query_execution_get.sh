p6_aws_athena_query_execution_get() {
    local query_execution_id="$1"
    shift 1

    p6_run_read_cmd aws athena get-query-execution --query-execution-id $query_execution_id "$@"
}
