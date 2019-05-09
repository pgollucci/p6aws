p6_aws_rds_global_cluster_delete() {
    local global_cluster_identifier="$1"
    shift 1

    p6_log_or_run aws rds delete-global-cluster --global-cluster-identifier $global_cluster_identifier "$@"
}
