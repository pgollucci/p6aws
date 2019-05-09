p6_aws_workdocs_document_delete() {
    local document_id="$1"
    shift 1

    p6_run_write_cmd aws workdocs delete-document --document-id $document_id "$@"
}
