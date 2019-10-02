######################################################################
#<
#
# Function:
#	p6_aws_workmail_group_members_list(organization_id, group_id)
#
#  Args:
#	organization_id - 
#	group_id - 
#
#>
######################################################################
p6_aws_workmail_group_members_list() {
    local organization_id="$1"
    local group_id="$2"
    shift 2

    p6_run_read_cmd aws workmail list-group-members --organization-id $organization_id --group-id $group_id "$@"
}