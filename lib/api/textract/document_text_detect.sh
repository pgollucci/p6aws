p6_aws_textract_document_text_detect() {
    local document="$1"
    shift 1

    p6_run_write_cmd aws textract detect-document-text --document $document "$@"
}
