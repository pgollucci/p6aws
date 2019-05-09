p6_aws_kinesisvideo_stream_untag() {
    local tag_key_list="$1"
    shift 1

    p6_log_or_run aws kinesisvideo untag-stream --tag-key-list $tag_key_list "$@"
}
