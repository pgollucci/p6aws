p6_aws_appstream_fleet_associate() {
    local fleet_name="$1"
    local stack_name="$2"
    shift 2

    p6_run_write_cmd aws appstream associate-fleet --fleet-name $fleet_name --stack-name $stack_name "$@"
}
