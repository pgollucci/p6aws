p6_aws_rds_db_cluster_delete() {
    local db_cluster_identifier="$1"
    shift 1

    p6_log_or_run aws rds delete-db-cluster --db-cluster-identifier $db_cluster_identifier "$@"
}
