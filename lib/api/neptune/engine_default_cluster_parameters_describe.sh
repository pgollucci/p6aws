p6_aws_neptune_engine_default_cluster_parameters_describe() {
    local db_parameter_group_family="$1"
    shift 1

    p6_log_and_run aws neptune describe-engine-default-cluster-parameters --db-parameter-group-family $db_parameter_group_family "$@"
}
