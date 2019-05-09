p6_aws_datasync_location_delete() {
    local location_arn="$1"
    shift 1

    p6_run_write_cmd aws datasync delete-location --location-arn $location_arn "$@"
}
