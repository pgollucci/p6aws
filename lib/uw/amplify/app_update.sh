######################################################################
#<
#
# Function:
#	p6_aws_amplify_branch_auto_build(app_id)
#
#  Args:
#	app_id - 
#
#>
######################################################################
p6_aws_amplify_branch_auto_build() {
        local app_id="$1"
        shift 1

    cond_log_and_run aws amplify update-app --app-id $app_id --enable-branch-auto-build "$@"
}

######################################################################
#<
#
# Function:
#	p6_aws_amplify_basic_auth(app_id, app_id, branch_name)
#
#  Args:
#	app_id - 
#	app_id - 
#	branch_name - 
#
#>
######################################################################
p6_aws_amplify_basic_auth() {
        local app_id="$1"
        shift 1

    cond_log_and_run aws amplify update-app --app-id $app_id --enable-basic-auth "$@"
}

######################################################################
#<
#
# Function:
#	p6_aws_amplify_auto_branch_creation(app_id)
#
#  Args:
#	app_id - 
#
#>
######################################################################
p6_aws_amplify_auto_branch_creation() {
        local app_id="$1"
        shift 1

    cond_log_and_run aws amplify update-app --app-id $app_id --enable-auto-branch-creation "$@"
}