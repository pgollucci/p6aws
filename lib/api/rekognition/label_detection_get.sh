p6_aws_rekognition_label_detection_get() {
    local job_id="$1"
    shift 1

    p6_run_read_cmd aws rekognition get-label-detection --job-id $job_id "$@"
}
