p6_aws_rds_data_sql_execute() {
    local aws_secret_store_arn="$1"
    local db_cluster_or_instance_arn="$2"
    local sql_statements="$3"
    shift 3

    p6_log_or_run aws rds-data execute-sql --aws-secret-store-arn $aws_secret_store_arn --db-cluster-or-instance-arn $db_cluster_or_instance_arn --sql-statements $sql_statements "$@"
}
