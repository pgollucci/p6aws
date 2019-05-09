p6_aws_snowball_cluster_cancel() {
    local cluster_id="$1"
    shift 1

    p6_log_or_run aws snowball cancel-cluster --cluster-id $cluster_id "$@"
}
