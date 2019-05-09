p6_aws_cloudfront_streaming_distribution_delete() {
    local id="$1"
    shift 1

    p6_run_write_cmd aws cloudfront delete-streaming-distribution --id $id "$@"
}
