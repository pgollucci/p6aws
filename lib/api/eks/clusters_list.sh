p6_aws_eks_clusters_list() {

    p6_run_read_cmd aws eks list-clusters "$@"
}
