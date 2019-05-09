p6_aws_rds_from_global_cluster_remove() {

    p6_log_or_run aws rds remove-from-global-cluster "$@"
}
