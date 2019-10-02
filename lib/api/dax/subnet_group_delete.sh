######################################################################
#<
#
# Function:
#	p6_aws_dax_subnet_group_delete(subnet_group_name)
#
#  Args:
#	subnet_group_name - 
#
#>
######################################################################
p6_aws_dax_subnet_group_delete() {
    local subnet_group_name="$1"
    shift 1

    p6_run_write_cmd aws dax delete-subnet-group --subnet-group-name $subnet_group_name "$@"
}