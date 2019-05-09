p6_aws_storagegateway_snapshot_schedule_describe() {
    local volume_arn="$1"
    shift 1

    p6_run_read_cmd aws storagegateway describe-snapshot-schedule --volume-arn $volume_arn "$@"
}
