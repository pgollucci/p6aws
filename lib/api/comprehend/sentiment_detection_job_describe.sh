p6_aws_comprehend_sentiment_detection_job_describe() {
    local job_id="$1"
    shift 1

    p6_run_read_cmd aws comprehend describe-sentiment-detection-job --job-id $job_id "$@"
}
