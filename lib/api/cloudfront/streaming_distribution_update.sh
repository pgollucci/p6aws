p6_aws_cloudfront_streaming_distribution_update() {
    local streaming_distribution_config="$1"
    local id="$2"
    shift 2

    p6_run_write_cmd aws cloudfront update-streaming-distribution --streaming-distribution-config $streaming_distribution_config --id $id "$@"
}
