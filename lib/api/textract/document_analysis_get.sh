p6_aws_textract_document_analysis_get() {
    local job_id="$1"
    shift 1

    p6_run_read_cmd aws textract get-document-analysis --job-id $job_id "$@"
}
