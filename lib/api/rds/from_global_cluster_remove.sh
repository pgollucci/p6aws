p6_aws_rds_from_global_cluster_remove() {

    p6_run_write_cmd aws rds remove-from-global-cluster "$@"
}
