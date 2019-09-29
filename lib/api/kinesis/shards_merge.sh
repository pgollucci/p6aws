######################################################################
#<
#
# Function:
#      = p6_aws_kinesis_shards_merge(stream_name, shard_to_merge, adjacent_shard_to_merge)
#
# Arg(s):
#    stream_name - 
#    shard_to_merge - 
#    adjacent_shard_to_merge - 
#
#
#>
######################################################################
p6_aws_kinesis_shards_merge() {
    local stream_name="$1"
    local shard_to_merge="$2"
    local adjacent_shard_to_merge="$3"
    shift 3

    p6_run_write_cmd aws kinesis merge-shards --stream-name $stream_name --shard-to-merge $shard_to_merge --adjacent-shard-to-merge $adjacent_shard_to_merge "$@"
}