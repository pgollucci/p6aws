p6_aws_rds_global_cluster_delete() {
    local global_cluster_identifier="$1"
    shift 1

    p6_run_write_cmd aws rds delete-global-cluster --global-cluster-identifier $global_cluster_identifier "$@"
}
