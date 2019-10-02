######################################################################
#<
#
# Function:
#	p6_aws_iot_stream_describe(stream_id)
#
#  Args:
#	stream_id - 
#
#>
######################################################################
p6_aws_iot_stream_describe() {
    local stream_id="$1"
    shift 1

    p6_run_read_cmd aws iot describe-stream --stream-id $stream_id "$@"
}