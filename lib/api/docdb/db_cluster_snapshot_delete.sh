p6_aws_docdb_db_cluster_snapshot_delete() {
    local db_cluster_snapshot_identifier="$1"
    shift 1

    p6_run_write_cmd aws docdb delete-db-cluster-snapshot --db-cluster-snapshot-identifier $db_cluster_snapshot_identifier "$@"
}
