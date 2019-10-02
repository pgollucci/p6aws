######################################################################
#<
#
# Function:
#	p6_aws_eks_cluster_delete(name)
#
#  Args:
#	name - 
#
#>
######################################################################
p6_aws_eks_cluster_delete() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws eks delete-cluster --name $name "$@"
}