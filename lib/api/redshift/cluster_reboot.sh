p6_aws_redshift_cluster_reboot() {
    local cluster_identifier="$1"
    shift 1

    p6_log_or_run aws redshift reboot-cluster --cluster-identifier $cluster_identifier "$@"
}
