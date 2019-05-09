p6_aws_emr_clusters_terminate() {
    local cluster_ids="$1"
    shift 1

    p6_run_write_cmd aws emr terminate-clusters --cluster-ids $cluster_ids "$@"
}
