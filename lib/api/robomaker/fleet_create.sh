p6_aws_robomaker_fleet_create() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws robomaker create-fleet --name $name "$@"
}
