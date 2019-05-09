p6_aws_kinesis_records_get() {
    local shard_iterator="$1"
    shift 1

    p6_run_read_cmd aws kinesis get-records --shard-iterator $shard_iterator "$@"
}
