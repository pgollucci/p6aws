p6_aws_kinesis_stream_consumers_list() {
    local stream_arn="$1"
    shift 1

    p6_run_read_cmd aws kinesis list-stream-consumers --stream-arn $stream_arn "$@"
}
