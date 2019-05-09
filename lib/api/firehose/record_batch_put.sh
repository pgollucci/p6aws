p6_aws_firehose_record_batch_put() {
    local delivery_stream_name="$1"
    local records="$2"
    shift 2

    p6_run_write_cmd aws firehose put-record-batch --delivery-stream-name $delivery_stream_name --records $records "$@"
}
