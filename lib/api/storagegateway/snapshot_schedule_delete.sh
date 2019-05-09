p6_aws_storagegateway_snapshot_schedule_delete() {
    local volume_arn="$1"
    shift 1

    p6_log_or_run aws storagegateway delete-snapshot-schedule --volume-arn $volume_arn "$@"
}
