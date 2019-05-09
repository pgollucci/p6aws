p6_aws_firehose_delivery_stream_untag() {
    local delivery_stream_name="$1"
    local tag_keys="$2"
    shift 2

    p6_log_or_run aws firehose untag-delivery-stream --delivery-stream-name $delivery_stream_name --tag-keys $tag_keys "$@"
}
