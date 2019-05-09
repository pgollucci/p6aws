p6_aws_iot_stream_describe() {
    local stream_id="$1"
    shift 1

    p6_log_and_run aws iot describe-stream --stream-id $stream_id "$@"
}
