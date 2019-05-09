p6_aws_gamelift_runtime_configuration_describe() {
    local fleet_id="$1"
    shift 1

    p6_run_read_cmd aws gamelift describe-runtime-configuration --fleet-id $fleet_id "$@"
}
