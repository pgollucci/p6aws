p6_aws_kinesis_record_put() {
    local stream_name="$1"
    local data="$2"
    local partition_key="$3"
    shift 3

    p6_log_or_run aws kinesis put-record --stream-name $stream_name --data $data --partition-key $partition_key "$@"
}
