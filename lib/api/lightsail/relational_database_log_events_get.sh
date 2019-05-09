p6_aws_lightsail_relational_database_log_events_get() {
    local relational_database_name="$1"
    local log_stream_name="$2"
    shift 2

    p6_run_read_cmd aws lightsail get-relational-database-log-events --relational-database-name $relational_database_name --log-stream-name $log_stream_name "$@"
}
