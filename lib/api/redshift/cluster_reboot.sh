######################################################################
#<
#
# Function:
#	p6_aws_redshift_cluster_reboot(cluster_identifier)
#
#  Args:
#	cluster_identifier - 
#
#>
######################################################################
p6_aws_redshift_cluster_reboot() {
    local cluster_identifier="$1"
    shift 1

    p6_run_write_cmd aws redshift reboot-cluster --cluster-identifier $cluster_identifier "$@"
}