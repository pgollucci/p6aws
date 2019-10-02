######################################################################
#<
#
# Function:
#	p6_aws_greengrass_role_from_group_disassociate(group_id)
#
#  Args:
#	group_id - 
#
#>
######################################################################
p6_aws_greengrass_role_from_group_disassociate() {
    local group_id="$1"
    shift 1

    p6_run_write_cmd aws greengrass disassociate-role-from-group --group-id $group_id "$@"
}