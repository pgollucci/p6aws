p6_aws_elasticache_snapshot_delete() {
    local snapshot_name="$1"
    shift 1

    p6_log_or_run aws elasticache delete-snapshot --snapshot-name $snapshot_name "$@"
}
