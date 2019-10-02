######################################################################
#<
#
# Function:
#	p6_aws_kinesis_stream_delete(stream_name)
#
#  Args:
#	stream_name - 
#
#>
######################################################################
p6_aws_kinesis_stream_delete() {
    local stream_name="$1"
    shift 1

    p6_run_write_cmd aws kinesis delete-stream --stream-name $stream_name "$@"
}