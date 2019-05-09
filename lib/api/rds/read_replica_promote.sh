p6_aws_rds_read_replica_promote() {
    local db_instance_identifier="$1"
    shift 1

    p6_log_or_run aws rds promote-read-replica --db-instance-identifier $db_instance_identifier "$@"
}
