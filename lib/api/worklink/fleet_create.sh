p6_aws_worklink_fleet_create() {
    local fleet_name="$1"
    shift 1

    p6_run_write_cmd aws worklink create-fleet --fleet-name $fleet_name "$@"
}
