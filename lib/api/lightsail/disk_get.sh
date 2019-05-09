p6_aws_lightsail_disk_get() {
    local disk_name="$1"
    shift 1

    p6_log_and_run aws lightsail get-disk --disk-name $disk_name "$@"
}
