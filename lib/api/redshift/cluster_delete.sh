######################################################################
#<
#
# Function:
#	p6_aws_redshift_cluster_delete(cluster_identifier)
#
#  Args:
#	cluster_identifier - 
#
#>
######################################################################
p6_aws_redshift_cluster_delete() {
    local cluster_identifier="$1"
    shift 1

    p6_run_write_cmd aws redshift delete-cluster --cluster-identifier $cluster_identifier "$@"
}