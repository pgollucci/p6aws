p6_aws_svc_eks_cluster_logging_enable() {
    local cluster_name="${1:-$KUBE_CLUSTER_NAME}"

    p6_aws_cmd eks update-cluster-config \
        --name "$cluster_name" \
        --logging '{"clusterLogging":[{"types":["api","audit","authenticator","controllerManager","scheduler"],"enabled":true}]}'
}

p6_aws_svc_eks_kubeconfig_update() {
  local stack_name="$1"

  eval `p6_aws_cmd cloudformation describe-stacks \
	--output text`
	--stack-name $stack_name \
	--query "Stacks[0].Outputs[2].OutputValue" \
}

