######################################################################
#<
#
# Function:
#	p6_aws_workmail_users_list(organization_id)
#
#  Args:
#	organization_id - 
#
#>
######################################################################
p6_aws_workmail_users_list() {
    local organization_id="$1"
    shift 1

    p6_run_read_cmd aws workmail list-users --organization-id $organization_id "$@"
}