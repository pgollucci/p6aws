p6_aws_ds_snapshot_limits_get() {
    local directory_id="$1"
    shift 1

    p6_run_read_cmd aws ds get-snapshot-limits --directory-id $directory_id "$@"
}
