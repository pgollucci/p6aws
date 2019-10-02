######################################################################
#<
#
# Function:
#	p6_aws_organizations_organizational_unit_create(parent_id, name)
#
#  Args:
#	parent_id - 
#	name - 
#
#>
######################################################################
p6_aws_organizations_organizational_unit_create() {
    local parent_id="$1"
    local name="$2"
    shift 2

    p6_run_write_cmd aws organizations create-organizational-unit --parent-id $parent_id --name $name "$@"
}