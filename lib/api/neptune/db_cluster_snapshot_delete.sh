######################################################################
#<
#
# Function:
#      = p6_aws_neptune_db_cluster_snapshot_delete(db_cluster_snapshot_identifier)
#
# Arg(s):
#    db_cluster_snapshot_identifier - 
#
#
#>
######################################################################
p6_aws_neptune_db_cluster_snapshot_delete() {
    local db_cluster_snapshot_identifier="$1"
    shift 1

    p6_run_write_cmd aws neptune delete-db-cluster-snapshot --db-cluster-snapshot-identifier $db_cluster_snapshot_identifier "$@"
}