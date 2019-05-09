p6_aws_firehose_delivery_stream_delete() {
    local delivery_stream_name="$1"
    shift 1

    p6_log_or_run aws firehose delete-delivery-stream --delivery-stream-name $delivery_stream_name "$@"
}
