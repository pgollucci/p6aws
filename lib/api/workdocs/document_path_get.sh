p6_aws_workdocs_document_path_get() {
    local document_id="$1"
    shift 1

    p6_log_and_run aws workdocs get-document-path --document-id $document_id "$@"
}
