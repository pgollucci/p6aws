p6_aws_neptune_db_cluster_snapshot_create() {
    local db_cluster_snapshot_identifier="$1"
    local db_cluster_identifier="$2"
    shift 2

    p6_log_or_run aws neptune create-db-cluster-snapshot --db-cluster-snapshot-identifier $db_cluster_snapshot_identifier --db-cluster-identifier $db_cluster_identifier "$@"
}
