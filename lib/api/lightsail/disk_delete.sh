p6_aws_lightsail_disk_delete() {
    local disk_name="$1"
    shift 1

    p6_log_or_run aws lightsail delete-disk --disk-name $disk_name "$@"
}
