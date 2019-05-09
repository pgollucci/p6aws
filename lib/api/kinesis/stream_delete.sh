p6_aws_kinesis_stream_delete() {
    local stream_name="$1"
    shift 1

    p6_log_or_run aws kinesis delete-stream --stream-name $stream_name "$@"
}
