######################################################################
#<
#
# Function:
#      = p6_aws_redshift_cluster_parameter_group_reset(parameter_group_name)
#
# Arg(s):
#    parameter_group_name - 
#
#
#>
######################################################################
p6_aws_redshift_cluster_parameter_group_reset() {
    local parameter_group_name="$1"
    shift 1

    p6_run_write_cmd aws redshift reset-cluster-parameter-group --parameter-group-name $parameter_group_name "$@"
}