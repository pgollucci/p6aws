p6_aws_ds_directory_unshare() {
    local directory_id="$1"
    local unshare_target="$2"
    shift 2

    p6_run_write_cmd aws ds unshare-directory --directory-id $directory_id --unshare-target $unshare_target "$@"
}
