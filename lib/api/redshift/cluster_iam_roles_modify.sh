p6_aws_redshift_cluster_iam_roles_modify() {
    local cluster_identifier="$1"
    shift 1

    p6_run_write_cmd aws redshift modify-cluster-iam-roles --cluster-identifier $cluster_identifier "$@"
}
