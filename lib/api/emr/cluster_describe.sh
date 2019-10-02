######################################################################
#<
#
# Function:
#	p6_aws_emr_cluster_describe(cluster_id)
#
#  Args:
#	cluster_id - 
#
#>
######################################################################
p6_aws_emr_cluster_describe() {
    local cluster_id="$1"
    shift 1

    p6_run_read_cmd aws emr describe-cluster --cluster-id $cluster_id "$@"
}