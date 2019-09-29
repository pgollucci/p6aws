######################################################################
#<
#
# Function:
#      = p6_aws_redshift_cluster_parameters_describe(parameter_group_name)
#
# Arg(s):
#    parameter_group_name - 
#
#
#>
######################################################################
p6_aws_redshift_cluster_parameters_describe() {
    local parameter_group_name="$1"
    shift 1

    p6_run_read_cmd aws redshift describe-cluster-parameters --parameter-group-name $parameter_group_name "$@"
}