p6_aws_redshift_modify_cluster_snapshots_batch() {
    local snapshot_identifier_list="$1"
    shift 1

    p6_log_or_run aws redshift batch-modify-cluster-snapshots --snapshot-identifier-list $snapshot_identifier_list "$@"
}
