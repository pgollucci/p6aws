p6_aws_rds_db_cluster_endpoint_modify() {
    local db_cluster_endpoint_identifier="$1"
    shift 1

    p6_log_or_run aws rds modify-db-cluster-endpoint --db-cluster-endpoint-identifier $db_cluster_endpoint_identifier "$@"
}
