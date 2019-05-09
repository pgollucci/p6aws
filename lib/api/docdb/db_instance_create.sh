p6_aws_docdb_db_instance_create() {
    local db_instance_identifier="$1"
    local db_instance_class="$2"
    local engine="$3"
    local db_cluster_identifier="$4"
    shift 4

    p6_run_write_cmd aws docdb create-db-instance --db-instance-identifier $db_instance_identifier --db-instance-class $db_instance_class --engine $engine --db-cluster-identifier $db_cluster_identifier "$@"
}
