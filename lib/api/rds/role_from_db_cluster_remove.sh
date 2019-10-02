######################################################################
#<
#
# Function:
#	p6_aws_rds_role_from_db_cluster_remove(db_cluster_identifier, role_arn)
#
#  Args:
#	db_cluster_identifier - 
#	role_arn - 
#
#>
######################################################################
p6_aws_rds_role_from_db_cluster_remove() {
    local db_cluster_identifier="$1"
    local role_arn="$2"
    shift 2

    p6_run_write_cmd aws rds remove-role-from-db-cluster --db-cluster-identifier $db_cluster_identifier --role-arn $role_arn "$@"
}