p6_aws_robomaker_fleet_delete() {
    local fleet="$1"
    shift 1

    p6_log_or_run aws robomaker delete-fleet --fleet $fleet "$@"
}
