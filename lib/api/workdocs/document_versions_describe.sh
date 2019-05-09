p6_aws_workdocs_document_versions_describe() {
    local document_id="$1"
    shift 1

    p6_log_and_run aws workdocs describe-document-versions --document-id $document_id "$@"
}
