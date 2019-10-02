######################################################################
#<
#
# Function:
#	p6_aws_eks_token_get(cluster_name)
#
#  Args:
#	cluster_name - 
#
#>
######################################################################
p6_aws_eks_token_get() {
    local cluster_name="$1"
    shift 1

    p6_run_read_cmd aws eks get-token --cluster-name $cluster_name "$@"
}