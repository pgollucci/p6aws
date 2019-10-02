######################################################################
#<
#
# Function:
#	p6_aws_workmail_groups_list(organization_id)
#
#  Args:
#	organization_id - 
#
#>
######################################################################
p6_aws_workmail_groups_list() {
    local organization_id="$1"
    shift 1

    p6_run_read_cmd aws workmail list-groups --organization-id $organization_id "$@"
}