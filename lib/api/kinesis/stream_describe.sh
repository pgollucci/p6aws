p6_aws_kinesis_stream_describe() {
    local stream_name="$1"
    shift 1

    p6_run_read_cmd aws kinesis describe-stream --stream-name $stream_name "$@"
}
