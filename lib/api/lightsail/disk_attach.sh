p6_aws_lightsail_disk_attach() {
    local disk_name="$1"
    local instance_name="$2"
    local disk_path="$3"
    shift 3

    p6_log_or_run aws lightsail attach-disk --disk-name $disk_name --instance-name $instance_name --disk-path $disk_path "$@"
}
