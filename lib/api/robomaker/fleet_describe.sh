p6_aws_robomaker_fleet_describe() {
    local fleet="$1"
    shift 1

    p6_log_and_run aws robomaker describe-fleet --fleet $fleet "$@"
}
