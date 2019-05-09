p6_aws_rekognition_content_moderation_start() {
    local video="$1"
    shift 1

    p6_log_or_run aws rekognition start-content-moderation --video $video "$@"
}
