p6_aws_ds_directory_delete() {
    local directory_id="$1"
    shift 1

    p6_run_write_cmd aws ds delete-directory --directory-id $directory_id "$@"
}
