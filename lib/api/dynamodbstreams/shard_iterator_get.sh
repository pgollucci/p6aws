######################################################################
#<
#
# Function:
#      = p6_aws_dynamodbstreams_shard_iterator_get(stream_arn, shard_id, shard_iterator_type)
#
# Arg(s):
#    stream_arn - 
#    shard_id - 
#    shard_iterator_type - 
#
#
#>
######################################################################
p6_aws_dynamodbstreams_shard_iterator_get() {
    local stream_arn="$1"
    local shard_id="$2"
    local shard_iterator_type="$3"
    shift 3

    p6_run_read_cmd aws dynamodbstreams get-shard-iterator --stream-arn $stream_arn --shard-id $shard_id --shard-iterator-type $shard_iterator_type "$@"
}