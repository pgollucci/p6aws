######################################################################
#<
#
# Function:
#	p6_aws_neptune_read_replica_db_cluster_promote(db_cluster_identifier)
#
#  Args:
#	db_cluster_identifier - 
#
#>
######################################################################
p6_aws_neptune_read_replica_db_cluster_promote() {
    local db_cluster_identifier="$1"
    shift 1

    p6_run_write_cmd aws neptune promote-read-replica-db-cluster --db-cluster-identifier $db_cluster_identifier "$@"
}