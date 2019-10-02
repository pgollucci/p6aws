######################################################################
#<
#
# Function:
#	p6_aws_redshift_cluster_parameter_group_modify(parameter_group_name, parameters)
#
#  Args:
#	parameter_group_name - 
#	parameters - 
#
#>
######################################################################
p6_aws_redshift_cluster_parameter_group_modify() {
    local parameter_group_name="$1"
    local parameters="$2"
    shift 2

    p6_run_write_cmd aws redshift modify-cluster-parameter-group --parameter-group-name $parameter_group_name --parameters $parameters "$@"
}