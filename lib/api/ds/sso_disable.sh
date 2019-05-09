p6_aws_ds_sso_disable() {
    local directory_id="$1"
    shift 1

    p6_run_write_cmd aws ds disable-sso --directory-id $directory_id "$@"
}
