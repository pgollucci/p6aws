p6_aws_redshift_cluster_delete() {
    local cluster_identifier="$1"
    shift 1

    p6_log_or_run aws redshift delete-cluster --cluster-identifier $cluster_identifier "$@"
}
