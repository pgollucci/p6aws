######################################################################
#<
#
# Function:
#	p6_aws_neptune_db_cluster_failover()
#
#>
######################################################################
p6_aws_neptune_db_cluster_failover() {

    p6_run_write_cmd aws neptune failover-db-cluster "$@"
}