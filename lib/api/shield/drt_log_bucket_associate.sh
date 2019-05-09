p6_aws_shield_drt_log_bucket_associate() {
    local log_bucket="$1"
    shift 1

    p6_run_write_cmd aws shield associate-drt-log-bucket --log-bucket $log_bucket "$@"
}
