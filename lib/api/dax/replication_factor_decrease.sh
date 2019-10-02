######################################################################
#<
#
# Function:
#	p6_aws_dax_replication_factor_decrease(cluster_name, new_replication_factor)
#
#  Args:
#	cluster_name - 
#	new_replication_factor - 
#
#>
######################################################################
p6_aws_dax_replication_factor_decrease() {
    local cluster_name="$1"
    local new_replication_factor="$2"
    shift 2

    p6_run_write_cmd aws dax decrease-replication-factor --cluster-name $cluster_name --new-replication-factor $new_replication_factor "$@"
}