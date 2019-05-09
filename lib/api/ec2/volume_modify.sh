p6_aws_ec2_volume_modify() {
    local volume_id="$1"
    shift 1

    p6_log_or_run aws ec2 modify-volume --volume-id $volume_id "$@"
}
