p6_aws_workdocs_document_get() {
    local document_id="$1"
    shift 1

    p6_run_read_cmd aws workdocs get-document --document-id $document_id "$@"
}
