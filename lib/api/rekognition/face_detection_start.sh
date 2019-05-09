p6_aws_rekognition_face_detection_start() {
    local video="$1"
    shift 1

    p6_run_write_cmd aws rekognition start-face-detection --video $video "$@"
}
