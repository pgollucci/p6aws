######################################################################
#<
#
# Function:
#	p6_aws_neptune_db_cluster_parameter_group_reset(db_cluster_parameter_group_name)
#
#  Args:
#	db_cluster_parameter_group_name - 
#
#>
######################################################################
p6_aws_neptune_db_cluster_parameter_group_reset() {
    local db_cluster_parameter_group_name="$1"
    shift 1

    p6_run_write_cmd aws neptune reset-db-cluster-parameter-group --db-cluster-parameter-group-name $db_cluster_parameter_group_name "$@"
}