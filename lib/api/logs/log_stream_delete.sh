p6_aws_logs_log_stream_delete() {
    local log_group_name="$1"
    local log_stream_name="$2"
    shift 2

    p6_run_write_cmd aws logs delete-log-stream --log-group-name $log_group_name --log-stream-name $log_stream_name "$@"
}
