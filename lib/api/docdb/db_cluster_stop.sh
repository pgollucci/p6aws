######################################################################
#<
#
# Function:
#	p6_aws_docdb_db_cluster_stop(db_cluster_identifier)
#
#  Args:
#	db_cluster_identifier - 
#
#>
######################################################################
p6_aws_docdb_db_cluster_stop() {
    local db_cluster_identifier="$1"
    shift 1

    p6_run_write_cmd aws docdb stop-db-cluster --db-cluster-identifier $db_cluster_identifier "$@"
}