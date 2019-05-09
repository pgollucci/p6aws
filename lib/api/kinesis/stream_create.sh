p6_aws_kinesis_stream_create() {
    local stream_name="$1"
    local shard_count="$2"
    shift 2

    p6_log_or_run aws kinesis create-stream --stream-name $stream_name --shard-count $shard_count "$@"
}
