######################################################################
#<
#
# Function:
#	p6_aws_organizations_organizational_units_for_parent_list(parent_id)
#
#  Args:
#	parent_id - 
#
#>
######################################################################
p6_aws_organizations_organizational_units_for_parent_list() {
    local parent_id="$1"
    shift 1

    p6_run_read_cmd aws organizations list-organizational-units-for-parent --parent-id $parent_id "$@"
}