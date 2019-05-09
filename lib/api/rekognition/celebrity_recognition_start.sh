p6_aws_rekognition_celebrity_recognition_start() {
    local video="$1"
    shift 1

    p6_run_write_cmd aws rekognition start-celebrity-recognition --video $video "$@"
}
