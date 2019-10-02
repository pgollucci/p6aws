######################################################################
#<
#
# Function:
#	p6_aws_kinesis_stream_create(stream_name, shard_count)
#
#  Args:
#	stream_name - 
#	shard_count - 
#
#>
######################################################################
p6_aws_kinesis_stream_create() {
    local stream_name="$1"
    local shard_count="$2"
    shift 2

    p6_run_write_cmd aws kinesis create-stream --stream-name $stream_name --shard-count $shard_count "$@"
}