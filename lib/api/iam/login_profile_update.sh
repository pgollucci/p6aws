######################################################################
#<
#
# Function:
#	p6_aws_iam_login_profile_update(user_name)
#
#  Args:
#	user_name - 
#
#>
######################################################################
p6_aws_iam_login_profile_update() {
    local user_name="$1"
    shift 1

    p6_run_write_cmd aws iam update-login-profile --user-name $user_name "$@"
}