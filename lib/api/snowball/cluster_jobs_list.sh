######################################################################
#<
#
# Function:
#	p6_aws_snowball_cluster_jobs_list(cluster_id)
#
#  Args:
#	cluster_id - 
#
#>
######################################################################
p6_aws_snowball_cluster_jobs_list() {
    local cluster_id="$1"
    shift 1

    p6_run_read_cmd aws snowball list-cluster-jobs --cluster-id $cluster_id "$@"
}