p6_aws_redshift_cluster_security_group_ingress_authorize() {
    local cluster_security_group_name="$1"
    shift 1

    p6_log_or_run aws redshift authorize-cluster-security-group-ingress --cluster-security-group-name $cluster_security_group_name "$@"
}
