p6_aws_shield_drt_log_bucket_disassociate() {
    local log_bucket="$1"
    shift 1

    p6_log_or_run aws shield disassociate-drt-log-bucket --log-bucket $log_bucket "$@"
}
