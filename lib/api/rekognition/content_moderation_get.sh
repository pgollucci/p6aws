p6_aws_rekognition_content_moderation_get() {
    local job_id="$1"
    shift 1

    p6_run_read_cmd aws rekognition get-content-moderation --job-id $job_id "$@"
}
