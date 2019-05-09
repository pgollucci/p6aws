p6_aws_redshift_delete_cluster_snapshots_batch() {
    local identifiers="$1"
    shift 1

    p6_log_or_run aws redshift batch-delete-cluster-snapshots --identifiers $identifiers "$@"
}
