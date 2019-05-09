p6_aws_rds_db_instance_read_replica_create() {
    local db_instance_identifier="$1"
    local source_db_instance_identifier="$2"
    shift 2

    p6_log_or_run aws rds create-db-instance-read-replica --db-instance-identifier $db_instance_identifier --source-db-instance-identifier $source_db_instance_identifier "$@"
}
