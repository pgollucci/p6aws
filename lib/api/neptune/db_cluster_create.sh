p6_aws_neptune_db_cluster_create() {
    local db_cluster_identifier="$1"
    local engine="$2"
    shift 2

    p6_run_write_cmd aws neptune create-db-cluster --db-cluster-identifier $db_cluster_identifier --engine $engine "$@"
}
