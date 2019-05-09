p6_aws_rds_db_cluster_backtracks_describe() {
    local db_cluster_identifier="$1"
    shift 1

    p6_log_and_run aws rds describe-db-cluster-backtracks --db-cluster-identifier $db_cluster_identifier "$@"
}
