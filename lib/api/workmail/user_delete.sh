######################################################################
#<
#
# Function:
#	p6_aws_workmail_user_delete(organization_id, user_id)
#
#  Args:
#	organization_id - 
#	user_id - 
#
#>
######################################################################
p6_aws_workmail_user_delete() {
    local organization_id="$1"
    local user_id="$2"
    shift 2

    p6_run_write_cmd aws workmail delete-user --organization-id $organization_id --user-id $user_id "$@"
}