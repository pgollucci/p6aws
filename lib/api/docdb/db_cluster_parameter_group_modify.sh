p6_aws_docdb_db_cluster_parameter_group_modify() {
    local db_cluster_parameter_group_name="$1"
    local parameters="$2"
    shift 2

    p6_run_write_cmd aws docdb modify-db-cluster-parameter-group --db-cluster-parameter-group-name $db_cluster_parameter_group_name --parameters $parameters "$@"
}
