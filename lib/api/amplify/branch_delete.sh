######################################################################
#<
#
# Function:
#	p6_aws_amplify_branch_delete(app_id, branch_name)
#
#  Args:
#	app_id - 
#	branch_name - 
#
#>
######################################################################
p6_aws_amplify_branch_delete() {
    local app_id="$1"
    local branch_name="$2"
    shift 2

    p6_run_write_cmd aws amplify delete-branch --app-id $app_id --branch-name $branch_name "$@"
}