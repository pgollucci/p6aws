p6_aws_neptune_db_cluster_failover() {

    p6_log_or_run aws neptune failover-db-cluster "$@"
}
