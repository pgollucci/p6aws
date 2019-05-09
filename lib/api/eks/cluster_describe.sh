p6_aws_eks_cluster_describe() {
    local name="$1"
    shift 1

    p6_log_and_run aws eks describe-cluster --name $name "$@"
}
