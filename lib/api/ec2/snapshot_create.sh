p6_aws_ec2_snapshot_create() {
    local volume_id="$1"
    shift 1

    p6_log_or_run aws ec2 create-snapshot --volume-id $volume_id "$@"
}
