p6_aws_elasticache_snapshot_create() {
    local snapshot_name="$1"
    shift 1

    p6_log_or_run aws elasticache create-snapshot --snapshot-name $snapshot_name "$@"
}
