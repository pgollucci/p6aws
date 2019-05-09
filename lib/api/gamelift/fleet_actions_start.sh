p6_aws_gamelift_fleet_actions_start() {
    local fleet_id="$1"
    local actions="$2"
    shift 2

    p6_log_or_run aws gamelift start-fleet-actions --fleet-id $fleet_id --actions $actions "$@"
}
