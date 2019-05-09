p6_aws_robomaker_fleet_create() {
    local name="$1"
    shift 1

    p6_log_or_run aws robomaker create-fleet --name $name "$@"
}
