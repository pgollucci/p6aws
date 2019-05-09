p6_aws_redshift_cluster_snapshot_modify() {
    local snapshot_identifier="$1"
    shift 1

    p6_log_or_run aws redshift modify-cluster-snapshot --snapshot-identifier $snapshot_identifier "$@"
}
