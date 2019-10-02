######################################################################
#<
#
# Function:
#	p6_aws_organizations_parents_list(child_id)
#
#  Args:
#	child_id - 
#
#>
######################################################################
p6_aws_organizations_parents_list() {
    local child_id="$1"
    shift 1

    p6_run_read_cmd aws organizations list-parents --child-id $child_id "$@"
}