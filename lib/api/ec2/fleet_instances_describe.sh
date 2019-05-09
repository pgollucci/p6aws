p6_aws_ec2_fleet_instances_describe() {
    local fleet_id="$1"
    shift 1

    p6_run_read_cmd aws ec2 describe-fleet-instances --fleet-id $fleet_id "$@"
}
