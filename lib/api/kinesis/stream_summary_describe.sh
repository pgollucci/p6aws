######################################################################
#<
#
# Function:
#	p6_aws_kinesis_stream_summary_describe(stream_name)
#
#  Args:
#	stream_name - 
#
#>
######################################################################
p6_aws_kinesis_stream_summary_describe() {
    local stream_name="$1"
    shift 1

    p6_run_read_cmd aws kinesis describe-stream-summary --stream-name $stream_name "$@"
}