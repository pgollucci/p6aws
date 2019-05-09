p6_aws_eks_clusters_list() {

    p6_log_and_run aws eks list-clusters "$@"
}
