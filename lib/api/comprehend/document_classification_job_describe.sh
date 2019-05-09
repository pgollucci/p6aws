p6_aws_comprehend_document_classification_job_describe() {
    local job_id="$1"
    shift 1

    p6_run_read_cmd aws comprehend describe-document-classification-job --job-id $job_id "$@"
}
