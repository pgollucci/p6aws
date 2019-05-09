p6_aws_workdocs_comment_create() {
    local document_id="$1"
    local version_id="$2"
    local text="$3"
    shift 3

    p6_log_or_run aws workdocs create-comment --document-id $document_id --version-id $version_id --text $text "$@"
}
