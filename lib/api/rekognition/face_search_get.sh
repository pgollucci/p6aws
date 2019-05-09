p6_aws_rekognition_face_search_get() {
    local job_id="$1"
    shift 1

    p6_log_and_run aws rekognition get-face-search --job-id $job_id "$@"
}
