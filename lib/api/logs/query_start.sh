p6_aws_logs_query_start() {
    local start_time="$1"
    local end_time="$2"
    local query_string="$3"
    shift 3

    p6_run_write_cmd aws logs start-query --start-time $start_time --end-time $end_time --query-string $query_string "$@"
}
