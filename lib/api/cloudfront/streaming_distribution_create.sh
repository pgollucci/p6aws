p6_aws_cloudfront_streaming_distribution_create() {
    local streaming_distribution_config="$1"
    shift 1

    p6_run_write_cmd aws cloudfront create-streaming-distribution --streaming-distribution-config $streaming_distribution_config "$@"
}
