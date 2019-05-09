p6_aws_storagegateway_volume_delete() {
    local volume_arn="$1"
    shift 1

    p6_log_or_run aws storagegateway delete-volume --volume-arn $volume_arn "$@"
}
