p6_aws_rds_db_cluster_parameter_group_create() {
    local db_cluster_parameter_group_name="$1"
    local db_parameter_group_family="$2"
    local description="$3"
    shift 3

    p6_run_write_cmd aws rds create-db-cluster-parameter-group --db-cluster-parameter-group-name $db_cluster_parameter_group_name --db-parameter-group-family $db_parameter_group_family --description $description "$@"
}
