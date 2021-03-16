######################################################################
#<
#
# Function: str cluster_status = p6_aws_svc_eks_cluster_status([cluster_name=$AWS_EKS_CLUSTER_NAME])
#
#  Args:
#	OPTIONAL cluster_name - [$AWS_EKS_CLUSTER_NAME]
#
#  Returns:
#	str - cluster_status
#
#>
######################################################################
p6_aws_svc_eks_cluster_status() {
  local cluster_name="${1:-$AWS_EKS_CLUSTER_NAME}"

  local cluster_status
  cluster_status=$(p6_aws_cli_cmd eks describe-cluster \
    --name "$cluster_name" \
    --query "cluster.status" \
    --output text)

  p6_return_str "$cluster_status"
}
