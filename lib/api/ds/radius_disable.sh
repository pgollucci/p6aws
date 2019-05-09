p6_aws_ds_radius_disable() {
    local directory_id="$1"
    shift 1

    p6_run_write_cmd aws ds disable-radius --directory-id $directory_id "$@"
}
