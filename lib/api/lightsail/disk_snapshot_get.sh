p6_aws_lightsail_disk_snapshot_get() {
    local disk_snapshot_name="$1"
    shift 1

    p6_log_and_run aws lightsail get-disk-snapshot --disk-snapshot-name $disk_snapshot_name "$@"
}
