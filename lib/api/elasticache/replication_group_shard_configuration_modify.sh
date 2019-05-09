p6_aws_elasticache_replication_group_shard_configuration_modify() {
    local replication_group_id="$1"
    local node_group_count="$2"
    local apply_immediately="$3"
    shift 3

    p6_log_or_run aws elasticache modify-replication-group-shard-configuration --replication-group-id $replication_group_id --node-group-count $node_group_count --apply-immediately $apply_immediately "$@"
}
