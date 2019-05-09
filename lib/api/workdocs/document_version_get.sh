p6_aws_workdocs_document_version_get() {
    local document_id="$1"
    local version_id="$2"
    shift 2

    p6_log_and_run aws workdocs get-document-version --document-id $document_id --version-id $version_id "$@"
}
