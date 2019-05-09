p6_aws_redshift_cluster_snapshots_describe() {

    p6_run_read_cmd aws redshift describe-cluster-snapshots "$@"
}
