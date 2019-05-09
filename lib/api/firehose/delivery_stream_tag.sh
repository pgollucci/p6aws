p6_aws_firehose_delivery_stream_tag() {
    local delivery_stream_name="$1"
    local tags="$2"
    shift 2

    p6_log_or_run aws firehose tag-delivery-stream --delivery-stream-name $delivery_stream_name --tags $tags "$@"
}
