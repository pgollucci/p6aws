######################################################################
#<
#
# Function:
#	p6_aws_amplify_branch_get(app_id, branch_name)
#
#  Args:
#	app_id - 
#	branch_name - 
#
#>
######################################################################
p6_aws_amplify_branch_get() {
    local app_id="$1"
    local branch_name="$2"
    shift 2

    p6_run_read_cmd aws amplify get-branch --app-id $app_id --branch-name $branch_name "$@"
}