p6_aws_rekognition_label_detection_start() {
    local video="$1"
    shift 1

    p6_log_or_run aws rekognition start-label-detection --video $video "$@"
}
