p6_aws_elasticache_replication_group_delete() {
    local replication_group_id="$1"
    shift 1

    p6_run_write_cmd aws elasticache delete-replication-group --replication-group-id $replication_group_id "$@"
}
