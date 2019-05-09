p6_aws_gamelift_instances_describe() {
    local fleet_id="$1"
    shift 1

    p6_run_read_cmd aws gamelift describe-instances --fleet-id $fleet_id "$@"
}
