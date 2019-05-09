p6_aws_ds_sso_enable() {
    local directory_id="$1"
    shift 1

    p6_run_write_cmd aws ds enable-sso --directory-id $directory_id "$@"
}
