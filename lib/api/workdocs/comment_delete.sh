p6_aws_workdocs_comment_delete() {
    local document_id="$1"
    local version_id="$2"
    local comment_id="$3"
    shift 3

    p6_log_or_run aws workdocs delete-comment --document-id $document_id --version-id $version_id --comment-id $comment_id "$@"
}
