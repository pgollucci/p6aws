p6_aws_ds_snapshot_delete() {
    local snapshot_id="$1"
    shift 1

    p6_log_or_run aws ds delete-snapshot --snapshot-id $snapshot_id "$@"
}
