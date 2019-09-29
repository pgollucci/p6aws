######################################################################
#<
#
# Function:
#      = p6_aws_firehose_delivery_stream_untag(delivery_stream_name, tag_keys)
#
# Arg(s):
#    delivery_stream_name - 
#    tag_keys - 
#
#
#>
######################################################################
p6_aws_firehose_delivery_stream_untag() {
    local delivery_stream_name="$1"
    local tag_keys="$2"
    shift 2

    p6_run_write_cmd aws firehose untag-delivery-stream --delivery-stream-name $delivery_stream_name --tag-keys $tag_keys "$@"
}