p6_aws_docdb_db_cluster_parameter_group_delete() {
    local db_cluster_parameter_group_name="$1"
    shift 1

    p6_run_write_cmd aws docdb delete-db-cluster-parameter-group --db-cluster-parameter-group-name $db_cluster_parameter_group_name "$@"
}
