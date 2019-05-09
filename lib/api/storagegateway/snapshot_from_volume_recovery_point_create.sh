p6_aws_storagegateway_snapshot_from_volume_recovery_point_create() {
    local volume_arn="$1"
    local snapshot_description="$2"
    shift 2

    p6_log_or_run aws storagegateway create-snapshot-from-volume-recovery-point --volume-arn $volume_arn --snapshot-description $snapshot_description "$@"
}
