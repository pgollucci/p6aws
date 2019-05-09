p6_aws_ec2_fleet_history_describe() {
    local fleet_id="$1"
    local start_time="$2"
    shift 2

    p6_run_read_cmd aws ec2 describe-fleet-history --fleet-id $fleet_id --start-time $start_time "$@"
}
