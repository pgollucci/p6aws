p6_aws_neptune_db_cluster_snapshot_attribute_modify() {
    local db_cluster_snapshot_identifier="$1"
    local attribute_name="$2"
    shift 2

    p6_log_or_run aws neptune modify-db-cluster-snapshot-attribute --db-cluster-snapshot-identifier $db_cluster_snapshot_identifier --attribute-name $attribute_name "$@"
}
