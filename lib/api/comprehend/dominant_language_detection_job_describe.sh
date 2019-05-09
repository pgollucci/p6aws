p6_aws_comprehend_dominant_language_detection_job_describe() {
    local job_id="$1"
    shift 1

    p6_run_read_cmd aws comprehend describe-dominant-language-detection-job --job-id $job_id "$@"
}
