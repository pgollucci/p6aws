p6_aws_workdocs_folder_create() {
    local parent_folder_id="$1"
    shift 1

    p6_run_write_cmd aws workdocs create-folder --parent-folder-id $parent_folder_id "$@"
}
