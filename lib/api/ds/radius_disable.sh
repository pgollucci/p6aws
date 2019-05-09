p6_aws_ds_radius_disable() {
    local directory_id="$1"
    shift 1

    p6_log_or_run aws ds disable-radius --directory-id $directory_id "$@"
}
