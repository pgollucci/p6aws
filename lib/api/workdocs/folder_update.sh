p6_aws_workdocs_folder_update() {
    local folder_id="$1"
    shift 1

    p6_run_write_cmd aws workdocs update-folder --folder-id $folder_id "$@"
}
