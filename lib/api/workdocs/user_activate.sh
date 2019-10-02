######################################################################
#<
#
# Function:
#	p6_aws_workdocs_user_activate(user_id)
#
#  Args:
#	user_id - 
#
#>
######################################################################
p6_aws_workdocs_user_activate() {
    local user_id="$1"
    shift 1

    p6_run_write_cmd aws workdocs activate-user --user-id $user_id "$@"
}