######################################################################
#<
#
# Function:
#      = p6_aws_firehose_record_put(delivery_stream_name, record)
#
# Arg(s):
#    delivery_stream_name - 
#    record - 
#
#
#>
######################################################################
p6_aws_firehose_record_put() {
    local delivery_stream_name="$1"
    local record="$2"
    shift 2

    p6_run_write_cmd aws firehose put-record --delivery-stream-name $delivery_stream_name --record $record "$@"
}