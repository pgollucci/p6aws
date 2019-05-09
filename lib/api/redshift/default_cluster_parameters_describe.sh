p6_aws_redshift_default_cluster_parameters_describe() {
    local parameter_group_family="$1"
    shift 1

    p6_run_read_cmd aws redshift describe-default-cluster-parameters --parameter-group-family $parameter_group_family "$@"
}
