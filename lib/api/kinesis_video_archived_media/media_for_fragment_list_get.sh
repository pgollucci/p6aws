p6_aws_kinesis_video_archived_media_media_for_fragment_list_get() {
    local stream_name="$1"
    local fragments="$2"
    shift 2

    p6_log_and_run aws kinesis-video-archived-media get-media-for-fragment-list --stream-name $stream_name --fragments $fragments "$@"
}
