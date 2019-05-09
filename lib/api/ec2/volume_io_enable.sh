p6_aws_ec2_volume_io_enable() {
    local volume_id="$1"
    shift 1

    p6_log_or_run aws ec2 enable-volume-io --volume-id $volume_id "$@"
}
