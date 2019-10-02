######################################################################
#<
#
# Function:
#	p6_aws_neptune_db_cluster_parameters_describe(db_cluster_parameter_group_name)
#
#  Args:
#	db_cluster_parameter_group_name - 
#
#>
######################################################################
p6_aws_neptune_db_cluster_parameters_describe() {
    local db_cluster_parameter_group_name="$1"
    shift 1

    p6_run_read_cmd aws neptune describe-db-cluster-parameters --db-cluster-parameter-group-name $db_cluster_parameter_group_name "$@"
}