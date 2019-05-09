p6_aws_iot_stream_delete() {
    local stream_id="$1"
    shift 1

    p6_run_write_cmd aws iot delete-stream --stream-id $stream_id "$@"
}
