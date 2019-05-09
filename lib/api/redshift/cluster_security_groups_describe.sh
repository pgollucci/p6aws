p6_aws_redshift_cluster_security_groups_describe() {

    p6_run_read_cmd aws redshift describe-cluster-security-groups "$@"
}
