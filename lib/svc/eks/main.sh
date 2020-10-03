######################################################################
#<
#
# Function: p6_aws_eks_svc_cluster_logging_enable([cluster_name=$AWS_EKS_CLUSTER_NAME])
#
#  Args:
#	OPTIONAL cluster_name -  [$AWS_EKS_CLUSTER_NAME]
#
#>
######################################################################
p6_aws_eks_svc_cluster_logging_enable() {
    local cluster_name="${1:-$AWS_EKS_CLUSTER_NAME}"

    p6_aws_cmd eks update-cluster-config \
        --name "$cluster_name" \
        --logging '{"clusterLogging":[{"types":["api","audit","authenticator","controllerManager","scheduler"],"enabled":true}]}'

   p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_eks_svc_kubeconfig_update(stack_name)
#
#  Args:
#	stack_name - 
#
#>
######################################################################
p6_aws_eks_svc_kubeconfig_update() {
  local stack_name="$1"

  local code
  code=$(p6_aws_cmd cloudformation describe-stacks --stack-name "$stack_name"  --query 'Stacks[0].Outputs' | grep -A1 SmileEksConfigCommand |awk -F\" '/OutputValue/ { print $4 }')

  p6_run_code "$code"

  p6df::modules::kubernetes::ctx "$(kubectx -c)"

  local aws_eks_cluster_name
  aws_eks_cluster_name=$(p6_echo "$P6_KUBE_CFG" | awk -F/ '{ print $2}')

  p6_env_export "AWS_EKS_CLUSTER_NAME" "$aws_eks_cluster_name"

  p6_return_void
}

######################################################################
#<
#
# Function: str cluster_status = p6_aws_eks_svc_cluster_status([cluster_name=$AWS_EKS_CLUSTER_NAME])
#
#  Args:
#	OPTIONAL cluster_name -  [$AWS_EKS_CLUSTER_NAME]
#
#  Returns:
#	str - cluster_status
#
#>
######################################################################
p6_aws_eks_svc_cluster_status() {
  local cluster_name="${1:-$AWS_EKS_CLUSTER_NAME}"

  local cluster_status
  cluster_status=$(p6_aws_cmd eks describe-cluster \
    --name "$cluster_name" \
    --query "cluster.status" \
    --output text)

  p6_return_str "$cluster_status"
}