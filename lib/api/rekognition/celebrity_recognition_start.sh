p6_aws_rekognition_celebrity_recognition_start() {
    local video="$1"
    shift 1

    p6_log_or_run aws rekognition start-celebrity-recognition --video $video "$@"
}
