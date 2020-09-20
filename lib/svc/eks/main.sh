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

  eval `p6_aws_cmd cloudformation describe-stacks --output text --stack-name SmileKubernetesStack --query "'Stacks[0].Outputs[0].OutputValue'"`

  p6df::modules::kubernetes::ctx $(kubectx -c)

  local aws_eks_cluster_name=$(p6_echo $P6_KUBE_CFG | awk -F/ '{ print $2}')
  p6_env_export "AWS_EKS_CLUSTER_NAME" "$aws_eks_cluster_name"
}
