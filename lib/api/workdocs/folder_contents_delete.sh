p6_aws_workdocs_folder_contents_delete() {
    local folder_id="$1"
    shift 1

    p6_log_or_run aws workdocs delete-folder-contents --folder-id $folder_id "$@"
}
