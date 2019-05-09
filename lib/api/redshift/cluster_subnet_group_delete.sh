p6_aws_redshift_cluster_subnet_group_delete() {
    local cluster_subnet_group_name="$1"
    shift 1

    p6_run_write_cmd aws redshift delete-cluster-subnet-group --cluster-subnet-group-name $cluster_subnet_group_name "$@"
}
