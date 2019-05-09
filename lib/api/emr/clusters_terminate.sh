p6_aws_emr_clusters_terminate() {
    local cluster_ids="$1"
    shift 1

    p6_log_or_run aws emr terminate-clusters --cluster-ids $cluster_ids "$@"
}
