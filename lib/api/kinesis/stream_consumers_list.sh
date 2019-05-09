p6_aws_kinesis_stream_consumers_list() {
    local stream_arn="$1"
    shift 1

    p6_log_and_run aws kinesis list-stream-consumers --stream-arn $stream_arn "$@"
}
