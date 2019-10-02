######################################################################
#<
#
# Function:
#	p6_aws_firehose_delivery_stream_tag(delivery_stream_name, tags)
#
#  Args:
#	delivery_stream_name - 
#	tags - 
#
#>
######################################################################
p6_aws_firehose_delivery_stream_tag() {
    local delivery_stream_name="$1"
    local tags="$2"
    shift 2

    p6_run_write_cmd aws firehose tag-delivery-stream --delivery-stream-name $delivery_stream_name --tags $tags "$@"
}