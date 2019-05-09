p6_aws_rds_db_cluster_start() {
    local db_cluster_identifier="$1"
    shift 1

    p6_run_write_cmd aws rds start-db-cluster --db-cluster-identifier $db_cluster_identifier "$@"
}
