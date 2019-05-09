p6_aws_docdb_db_cluster_modify() {
    local db_cluster_identifier="$1"
    shift 1

    p6_run_write_cmd aws docdb modify-db-cluster --db-cluster-identifier $db_cluster_identifier "$@"
}
