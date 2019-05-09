p6_aws_logs_query_start() {
    local log_group_name="$1"
    local start_time="$2"
    local end_time="$3"
    local query_string="$4"
    shift 4

    p6_log_or_run aws logs start-query --log-group-name $log_group_name --start-time $start_time --end-time $end_time --query-string $query_string "$@"
}
