p6_aws_elasticache_replica_count_increase() {
    local replication_group_id="$1"
    local apply_immediately="$2"
    shift 2

    p6_run_write_cmd aws elasticache increase-replica-count --replication-group-id $replication_group_id --apply-immediately $apply_immediately "$@"
}
