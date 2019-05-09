p6_aws_lightsail_disk_snapshot_create() {
    local disk_name="$1"
    local disk_snapshot_name="$2"
    shift 2

    p6_log_or_run aws lightsail create-disk-snapshot --disk-name $disk_name --disk-snapshot-name $disk_snapshot_name "$@"
}
