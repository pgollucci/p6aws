p6_aws_kinesisvideo_stream_create() {
    local stream_name="$1"
    shift 1

    p6_run_write_cmd aws kinesisvideo create-stream --stream-name $stream_name "$@"
}
