p6_aws_lightsail_disk_snapshot_delete() {
    local disk_snapshot_name="$1"
    shift 1

    p6_log_or_run aws lightsail delete-disk-snapshot --disk-snapshot-name $disk_snapshot_name "$@"
}
