######################################################################
#<
#
# Function:
#      = p6_aws_firehose_delivery_stream_delete(delivery_stream_name)
#
# Arg(s):
#    delivery_stream_name - 
#
#
#>
######################################################################
p6_aws_firehose_delivery_stream_delete() {
    local delivery_stream_name="$1"
    shift 1

    p6_run_write_cmd aws firehose delete-delivery-stream --delivery-stream-name $delivery_stream_name "$@"
}