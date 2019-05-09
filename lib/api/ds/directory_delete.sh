p6_aws_ds_directory_delete() {
    local directory_id="$1"
    shift 1

    p6_log_or_run aws ds delete-directory --directory-id $directory_id "$@"
}
