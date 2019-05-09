p6_aws_ec2_fleets_delete() {
    local fleet_ids="$1"
    local terminate_instances="$2"
    shift 2

    p6_log_or_run aws ec2 delete-fleets --fleet-ids $fleet_ids --terminate-instances $terminate_instances "$@"
}
