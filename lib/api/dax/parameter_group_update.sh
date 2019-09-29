######################################################################
#<
#
# Function:
#      = p6_aws_dax_parameter_group_update(parameter_group_name, parameter_name_values)
#
# Arg(s):
#    parameter_group_name - 
#    parameter_name_values - 
#
#
#>
######################################################################
p6_aws_dax_parameter_group_update() {
    local parameter_group_name="$1"
    local parameter_name_values="$2"
    shift 2

    p6_run_write_cmd aws dax update-parameter-group --parameter-group-name $parameter_group_name --parameter-name-values $parameter_name_values "$@"
}