p6_aws_kinesisvideo_stream_tag() {
    local tags="$1"
    shift 1

    p6_log_or_run aws kinesisvideo tag-stream --tags $tags "$@"
}
