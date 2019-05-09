p6_aws_gamelift_fleet_port_settings_update() {
    local fleet_id="$1"
    shift 1

    p6_log_or_run aws gamelift update-fleet-port-settings --fleet-id $fleet_id "$@"
}
