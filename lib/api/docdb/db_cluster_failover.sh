######################################################################
#<
#
# Function:
#      = p6_aws_docdb_db_cluster_failover()
#
#
#
#>
######################################################################
p6_aws_docdb_db_cluster_failover() {

    p6_run_write_cmd aws docdb failover-db-cluster "$@"
}