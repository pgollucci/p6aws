p6_aws_snowball_cluster_update() {
    local cluster_id="$1"
    shift 1

    p6_log_or_run aws snowball update-cluster --cluster-id $cluster_id "$@"
}
