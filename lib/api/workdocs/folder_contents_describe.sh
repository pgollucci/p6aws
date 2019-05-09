p6_aws_workdocs_folder_contents_describe() {
    local folder_id="$1"
    shift 1

    p6_log_and_run aws workdocs describe-folder-contents --folder-id $folder_id "$@"
}
