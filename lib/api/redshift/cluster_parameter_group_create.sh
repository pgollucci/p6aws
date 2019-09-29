######################################################################
#<
#
# Function:
#      = p6_aws_redshift_cluster_parameter_group_create(parameter_group_name, parameter_group_family, description)
#
# Arg(s):
#    parameter_group_name - 
#    parameter_group_family - 
#    description - 
#
#
#>
######################################################################
p6_aws_redshift_cluster_parameter_group_create() {
    local parameter_group_name="$1"
    local parameter_group_family="$2"
    local description="$3"
    shift 3

    p6_run_write_cmd aws redshift create-cluster-parameter-group --parameter-group-name $parameter_group_name --parameter-group-family $parameter_group_family --description $description "$@"
}