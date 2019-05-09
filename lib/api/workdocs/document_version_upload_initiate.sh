p6_aws_workdocs_document_version_upload_initiate() {
    local parent_folder_id="$1"
    shift 1

    p6_log_or_run aws workdocs initiate-document-version-upload --parent-folder-id $parent_folder_id "$@"
}
