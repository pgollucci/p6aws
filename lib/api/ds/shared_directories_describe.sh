p6_aws_ds_shared_directories_describe() {
    local owner_directory_id="$1"
    shift 1

    p6_run_read_cmd aws ds describe-shared-directories --owner-directory-id $owner_directory_id "$@"
}
