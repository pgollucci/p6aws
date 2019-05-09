p6_aws_kinesis_stream_summary_describe() {
    local stream_name="$1"
    shift 1

    p6_log_and_run aws kinesis describe-stream-summary --stream-name $stream_name "$@"
}
