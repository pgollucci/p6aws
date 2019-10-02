######################################################################
#<
#
# Function:
#	p6_aws_dax_cluster_delete(cluster_name)
#
#  Args:
#	cluster_name - 
#
#>
######################################################################
p6_aws_dax_cluster_delete() {
    local cluster_name="$1"
    shift 1

    p6_run_write_cmd aws dax delete-cluster --cluster-name $cluster_name "$@"
}