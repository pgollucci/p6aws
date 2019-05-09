p6_aws_rds_db_snapshot_delete() {
    local db_snapshot_identifier="$1"
    shift 1

    p6_log_or_run aws rds delete-db-snapshot --db-snapshot-identifier $db_snapshot_identifier "$@"
}
