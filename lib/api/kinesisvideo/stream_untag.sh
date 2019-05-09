p6_aws_kinesisvideo_stream_untag() {
    local tag_key_list="$1"
    shift 1

    p6_run_write_cmd aws kinesisvideo untag-stream --tag-key-list $tag_key_list "$@"
}
