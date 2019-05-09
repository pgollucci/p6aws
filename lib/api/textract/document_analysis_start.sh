p6_aws_textract_document_analysis_start() {
    local document_location="$1"
    local feature_types="$2"
    shift 2

    p6_run_write_cmd aws textract start-document-analysis --document-location $document_location --feature-types $feature_types "$@"
}
