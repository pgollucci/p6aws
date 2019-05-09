p6_aws_storagegateway_snapshot_create() {
    local volume_arn="$1"
    local snapshot_description="$2"
    shift 2

    p6_log_or_run aws storagegateway create-snapshot --volume-arn $volume_arn --snapshot-description $snapshot_description "$@"
}
