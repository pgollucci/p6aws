p6_aws_redshift_cluster_iam_roles_modify() {
    local cluster_identifier="$1"
    shift 1

    p6_log_or_run aws redshift modify-cluster-iam-roles --cluster-identifier $cluster_identifier "$@"
}
