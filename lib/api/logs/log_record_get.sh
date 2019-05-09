p6_aws_logs_log_record_get() {
    local log_record_pointer="$1"
    shift 1

    p6_run_read_cmd aws logs get-log-record --log-record-pointer $log_record_pointer "$@"
}
