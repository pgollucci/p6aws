p6_aws_rds_db_instance_from_db_snapshot_restore() {
    local db_instance_identifier="$1"
    local db_snapshot_identifier="$2"
    shift 2

    p6_log_or_run aws rds restore-db-instance-from-db-snapshot --db-instance-identifier $db_instance_identifier --db-snapshot-identifier $db_snapshot_identifier "$@"
}
