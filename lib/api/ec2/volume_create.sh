p6_aws_ec2_volume_create() {
    local availability_zone="$1"
    shift 1

    p6_run_write_cmd aws ec2 create-volume --availability-zone $availability_zone "$@"
}
