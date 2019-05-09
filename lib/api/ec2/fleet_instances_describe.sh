p6_aws_ec2_fleet_instances_describe() {
    local fleet_id="$1"
    shift 1

    p6_log_and_run aws ec2 describe-fleet-instances --fleet-id $fleet_id "$@"
}
