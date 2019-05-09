p6_aws_worklink_fleet_metadata_describe() {
    local fleet_arn="$1"
    shift 1

    p6_run_read_cmd aws worklink describe-fleet-metadata --fleet-arn $fleet_arn "$@"
}
