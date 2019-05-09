p6_aws_worklink_fleet_delete() {
    local fleet_arn="$1"
    shift 1

    p6_run_write_cmd aws worklink delete-fleet --fleet-arn $fleet_arn "$@"
}
