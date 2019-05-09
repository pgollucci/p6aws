p6_aws_ec2_volume_detach() {
    local volume_id="$1"
    shift 1

    p6_log_or_run aws ec2 detach-volume --volume-id $volume_id "$@"
}
