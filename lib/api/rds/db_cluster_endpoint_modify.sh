######################################################################
#<
#
# Function:
#	p6_aws_rds_db_cluster_endpoint_modify(db_cluster_endpoint_identifier)
#
#  Args:
#	db_cluster_endpoint_identifier - 
#
#>
######################################################################
p6_aws_rds_db_cluster_endpoint_modify() {
    local db_cluster_endpoint_identifier="$1"
    shift 1

    p6_run_write_cmd aws rds modify-db-cluster-endpoint --db-cluster-endpoint-identifier $db_cluster_endpoint_identifier "$@"
}