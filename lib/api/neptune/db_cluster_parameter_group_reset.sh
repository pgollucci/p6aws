p6_aws_neptune_db_cluster_parameter_group_reset() {
    local db_cluster_parameter_group_name="$1"
    shift 1

    p6_log_or_run aws neptune reset-db-cluster-parameter-group --db-cluster-parameter-group-name $db_cluster_parameter_group_name "$@"
}
