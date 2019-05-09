p6_aws_firehose_delivery_stream_create() {
    local delivery_stream_name="$1"
    shift 1

    p6_run_write_cmd aws firehose create-delivery-stream --delivery-stream-name $delivery_stream_name "$@"
}
