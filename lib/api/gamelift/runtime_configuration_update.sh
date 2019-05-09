p6_aws_gamelift_runtime_configuration_update() {
    local fleet_id="$1"
    local runtime_configuration="$2"
    shift 2

    p6_log_or_run aws gamelift update-runtime-configuration --fleet-id $fleet_id --runtime-configuration $runtime_configuration "$@"
}
