######################################################################
#<
#
# Function:
#      = p6_aws_firehose_delivery_stream_encryption_start(delivery_stream_name)
#
# Arg(s):
#    delivery_stream_name - 
#
#
#>
######################################################################
p6_aws_firehose_delivery_stream_encryption_start() {
    local delivery_stream_name="$1"
    shift 1

    p6_run_write_cmd aws firehose start-delivery-stream-encryption --delivery-stream-name $delivery_stream_name "$@"
}