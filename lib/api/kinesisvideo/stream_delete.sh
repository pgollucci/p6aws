p6_aws_kinesisvideo_stream_delete() {
    local stream_arn="$1"
    shift 1

    p6_log_or_run aws kinesisvideo delete-stream --stream-arn $stream_arn "$@"
}
