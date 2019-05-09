p6_aws_rekognition_celebrity_recognition_get() {
    local job_id="$1"
    shift 1

    p6_log_and_run aws rekognition get-celebrity-recognition --job-id $job_id "$@"
}
