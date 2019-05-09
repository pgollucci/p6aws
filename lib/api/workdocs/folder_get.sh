p6_aws_workdocs_folder_get() {
    local folder_id="$1"
    shift 1

    p6_log_and_run aws workdocs get-folder --folder-id $folder_id "$@"
}
