p6_aws_shield_drt_log_bucket_disassociate() {
    local log_bucket="$1"
    shift 1

    p6_run_write_cmd aws shield disassociate-drt-log-bucket --log-bucket $log_bucket "$@"
}
