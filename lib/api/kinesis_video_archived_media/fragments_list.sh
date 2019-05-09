p6_aws_kinesis_video_archived_media_fragments_list() {
    local stream_name="$1"
    shift 1

    p6_log_and_run aws kinesis-video-archived-media list-fragments --stream-name $stream_name "$@"
}
