p6_aws_iot_job_document_get() {
    local job_id="$1"
    shift 1

    p6_log_and_run aws iot get-job-document --job-id $job_id "$@"
}
