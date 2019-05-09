p6_aws_redshift_from_cluster_snapshot_restore() {
    local cluster_identifier="$1"
    local snapshot_identifier="$2"
    shift 2

    p6_run_write_cmd aws redshift restore-from-cluster-snapshot --cluster-identifier $cluster_identifier --snapshot-identifier $snapshot_identifier "$@"
}
