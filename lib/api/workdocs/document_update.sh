p6_aws_workdocs_document_update() {
    local document_id="$1"
    shift 1

    p6_log_or_run aws workdocs update-document --document-id $document_id "$@"
}
