######################################################################
#<
#
# Function:
#	p6_aws_rds_db_cluster_snapshot_copy(source_db_cluster_snapshot_identifier, target_db_cluster_snapshot_identifier)
#
#  Args:
#	source_db_cluster_snapshot_identifier - 
#	target_db_cluster_snapshot_identifier - 
#
#>
######################################################################
p6_aws_rds_db_cluster_snapshot_copy() {
    local source_db_cluster_snapshot_identifier="$1"
    local target_db_cluster_snapshot_identifier="$2"
    shift 2

    p6_run_write_cmd aws rds copy-db-cluster-snapshot --source-db-cluster-snapshot-identifier $source_db_cluster_snapshot_identifier --target-db-cluster-snapshot-identifier $target_db_cluster_snapshot_identifier "$@"
}