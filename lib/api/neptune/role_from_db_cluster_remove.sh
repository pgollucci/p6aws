p6_aws_neptune_role_from_db_cluster_remove() {
    local db_cluster_identifier="$1"
    local role_arn="$2"
    shift 2

    p6_run_write_cmd aws neptune remove-role-from-db-cluster --db-cluster-identifier $db_cluster_identifier --role-arn $role_arn "$@"
}
