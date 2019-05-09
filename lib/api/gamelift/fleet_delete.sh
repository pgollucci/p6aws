p6_aws_gamelift_fleet_delete() {
    local fleet_id="$1"
    shift 1

    p6_log_or_run aws gamelift delete-fleet --fleet-id $fleet_id "$@"
}
