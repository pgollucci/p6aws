p6_aws_firehose_record_put() {
    local delivery_stream_name="$1"
    local record="$2"
    shift 2

    p6_log_or_run aws firehose put-record --delivery-stream-name $delivery_stream_name --record $record "$@"
}
