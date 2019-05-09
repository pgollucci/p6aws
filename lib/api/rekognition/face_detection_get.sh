p6_aws_rekognition_face_detection_get() {
    local job_id="$1"
    shift 1

    p6_log_and_run aws rekognition get-face-detection --job-id $job_id "$@"
}
