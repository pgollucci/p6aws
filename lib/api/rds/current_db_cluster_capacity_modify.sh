######################################################################
#<
#
# Function:
#	p6_aws_rds_current_db_cluster_capacity_modify(db_cluster_identifier)
#
#  Args:
#	db_cluster_identifier - 
#
#>
######################################################################
p6_aws_rds_current_db_cluster_capacity_modify() {
    local db_cluster_identifier="$1"
    shift 1

    p6_run_write_cmd aws rds modify-current-db-cluster-capacity --db-cluster-identifier $db_cluster_identifier "$@"
}