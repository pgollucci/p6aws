p6_aws_gamelift_fleet_create() {
    local name="$1"
    local ec2_instance_type="$2"
    shift 2

    p6_run_write_cmd aws gamelift create-fleet --name $name --ec2-instance-type $ec2_instance_type "$@"
}
