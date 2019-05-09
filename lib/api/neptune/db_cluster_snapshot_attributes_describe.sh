p6_aws_neptune_db_cluster_snapshot_attributes_describe() {
    local db_cluster_snapshot_identifier="$1"
    shift 1

    p6_run_read_cmd aws neptune describe-db-cluster-snapshot-attributes --db-cluster-snapshot-identifier $db_cluster_snapshot_identifier "$@"
}
