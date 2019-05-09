p6_aws_robomaker_fleet_delete() {
    local fleet="$1"
    shift 1

    p6_run_write_cmd aws robomaker delete-fleet --fleet $fleet "$@"
}
