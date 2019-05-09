p6_aws_iot_stream_update() {
    local stream_id="$1"
    shift 1

    p6_log_or_run aws iot update-stream --stream-id $stream_id "$@"
}
