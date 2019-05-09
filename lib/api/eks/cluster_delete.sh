p6_aws_eks_cluster_delete() {
    local name="$1"
    shift 1

    p6_log_or_run aws eks delete-cluster --name $name "$@"
}
