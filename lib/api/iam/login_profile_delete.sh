######################################################################
#<
#
# Function:
#	p6_aws_iam_login_profile_delete(user_name)
#
#  Args:
#	user_name - 
#
#>
######################################################################
p6_aws_iam_login_profile_delete() {
    local user_name="$1"
    shift 1

    p6_run_write_cmd aws iam delete-login-profile --user-name $user_name "$@"
}