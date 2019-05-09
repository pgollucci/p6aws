p6_aws_workdocs_folder_create() {
    local parent_folder_id="$1"
    shift 1

    p6_log_or_run aws workdocs create-folder --parent-folder-id $parent_folder_id "$@"
}
