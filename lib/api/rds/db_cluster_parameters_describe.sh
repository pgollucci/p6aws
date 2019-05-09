p6_aws_rds_db_cluster_parameters_describe() {
    local db_cluster_parameter_group_name="$1"
    shift 1

    p6_run_read_cmd aws rds describe-db-cluster-parameters --db-cluster-parameter-group-name $db_cluster_parameter_group_name "$@"
}
