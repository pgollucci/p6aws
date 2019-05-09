p6_aws_redshift_cluster_security_group_delete() {
    local cluster_security_group_name="$1"
    shift 1

    p6_run_write_cmd aws redshift delete-cluster-security-group --cluster-security-group-name $cluster_security_group_name "$@"
}
