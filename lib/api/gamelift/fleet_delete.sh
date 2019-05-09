p6_aws_gamelift_fleet_delete() {
    local fleet_id="$1"
    shift 1

    p6_run_write_cmd aws gamelift delete-fleet --fleet-id $fleet_id "$@"
}
