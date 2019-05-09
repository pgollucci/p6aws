p6_aws_ec2_volume_create() {
    local availability_zone="$1"
    shift 1

    p6_log_or_run aws ec2 create-volume --availability-zone $availability_zone "$@"
}
