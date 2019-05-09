p6_aws_rds_db_snapshot_copy() {
    local source_db_snapshot_identifier="$1"
    local target_db_snapshot_identifier="$2"
    shift 2

    p6_log_or_run aws rds copy-db-snapshot --source-db-snapshot-identifier $source_db_snapshot_identifier --target-db-snapshot-identifier $target_db_snapshot_identifier "$@"
}
