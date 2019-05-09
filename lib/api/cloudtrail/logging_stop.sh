p6_aws_cloudtrail_logging_stop() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws cloudtrail stop-logging --name $name "$@"
}
