######################################################################
#<
#
# Function:
#	p6_aws_firehose_delivery_stream_encryption_stop(delivery_stream_name)
#
#  Args:
#	delivery_stream_name - 
#
#>
######################################################################
p6_aws_firehose_delivery_stream_encryption_stop() {
    local delivery_stream_name="$1"
    shift 1

    p6_run_write_cmd aws firehose stop-delivery-stream-encryption --delivery-stream-name $delivery_stream_name "$@"
}