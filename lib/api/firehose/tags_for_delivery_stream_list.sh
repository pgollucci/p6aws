p6_aws_firehose_tags_for_delivery_stream_list() {
    local delivery_stream_name="$1"
    shift 1

    p6_run_read_cmd aws firehose list-tags-for-delivery-stream --delivery-stream-name $delivery_stream_name "$@"
}
