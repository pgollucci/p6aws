p6_aws_kinesis_shard_count_update() {
    local stream_name="$1"
    local target_shard_count="$2"
    local scaling_type="$3"
    shift 3

    p6_run_write_cmd aws kinesis update-shard-count --stream-name $stream_name --target-shard-count $target_shard_count --scaling-type $scaling_type "$@"
}
