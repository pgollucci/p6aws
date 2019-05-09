p6_aws_redshift_cluster_parameters_describe() {
    local parameter_group_name="$1"
    shift 1

    p6_log_and_run aws redshift describe-cluster-parameters --parameter-group-name $parameter_group_name "$@"
}
