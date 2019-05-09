p6_aws_lightsail_disk_snapshot_create() {
    local disk_snapshot_name="$1"
    shift 1

    p6_run_write_cmd aws lightsail create-disk-snapshot --disk-snapshot-name $disk_snapshot_name "$@"
}
