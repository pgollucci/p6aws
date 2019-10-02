######################################################################
#<
#
# Function:
#	p6_aws_dax_subnet_group_update(subnet_group_name)
#
#  Args:
#	subnet_group_name - 
#
#>
######################################################################
p6_aws_dax_subnet_group_update() {
    local subnet_group_name="$1"
    shift 1

    p6_run_write_cmd aws dax update-subnet-group --subnet-group-name $subnet_group_name "$@"
}