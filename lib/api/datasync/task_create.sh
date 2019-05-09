p6_aws_datasync_task_create() {
    local source_location_arn="$1"
    local destination_location_arn="$2"
    shift 2

    p6_run_write_cmd aws datasync create-task --source-location-arn $source_location_arn --destination-location-arn $destination_location_arn "$@"
}
