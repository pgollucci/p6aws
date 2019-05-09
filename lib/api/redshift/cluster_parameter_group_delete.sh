p6_aws_redshift_cluster_parameter_group_delete() {
    local parameter_group_name="$1"
    shift 1

    p6_log_or_run aws redshift delete-cluster-parameter-group --parameter-group-name $parameter_group_name "$@"
}
