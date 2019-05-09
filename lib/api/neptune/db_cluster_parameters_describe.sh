p6_aws_neptune_db_cluster_parameters_describe() {
    local db_cluster_parameter_group_name="$1"
    shift 1

    p6_log_and_run aws neptune describe-db-cluster-parameters --db-cluster-parameter-group-name $db_cluster_parameter_group_name "$@"
}
