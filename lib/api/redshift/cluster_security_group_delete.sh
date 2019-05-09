p6_aws_redshift_cluster_security_group_delete() {
    local cluster_security_group_name="$1"
    shift 1

    p6_log_or_run aws redshift delete-cluster-security-group --cluster-security-group-name $cluster_security_group_name "$@"
}
