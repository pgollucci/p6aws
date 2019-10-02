######################################################################
#<
#
# Function:
#	p6_aws_eks_cluster_describe(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_eks_cluster_describe() {
    local name="$1"
    shift 1

    p6_run_read_cmd aws eks describe-cluster --name $name "$@"
}