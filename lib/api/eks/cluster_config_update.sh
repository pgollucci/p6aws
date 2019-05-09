p6_aws_eks_cluster_config_update() {
    local name="$1"
    shift 1

    p6_run_write_cmd aws eks update-cluster-config --name $name "$@"
}
