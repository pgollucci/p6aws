p6_aws_redshift_snapshot_copy_enable() {
    local cluster_identifier="$1"
    local destination_region="$2"
    shift 2

    p6_run_write_cmd aws redshift enable-snapshot-copy --cluster-identifier $cluster_identifier --destination-region $destination_region "$@"
}
