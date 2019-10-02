######################################################################
#<
#
# Function:
#	p6_aws_workmail_group_delete(organization_id, group_id)
#
#  Args:
#	organization_id - 
#	group_id - 
#
#>
######################################################################
p6_aws_workmail_group_delete() {
    local organization_id="$1"
    local group_id="$2"
    shift 2

    p6_run_write_cmd aws workmail delete-group --organization-id $organization_id --group-id $group_id "$@"
}