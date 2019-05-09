p6_aws_ds_snapshot_create() {
    local directory_id="$1"
    shift 1

    p6_log_or_run aws ds create-snapshot --directory-id $directory_id "$@"
}
