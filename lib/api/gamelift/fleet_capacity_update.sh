p6_aws_gamelift_fleet_capacity_update() {
    local fleet_id="$1"
    shift 1

    p6_run_write_cmd aws gamelift update-fleet-capacity --fleet-id $fleet_id "$@"
}
