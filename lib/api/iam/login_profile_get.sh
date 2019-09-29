######################################################################
#<
#
# Function:
#      = p6_aws_iam_login_profile_get(user_name)
#
# Arg(s):
#    user_name - 
#
#
#>
######################################################################
p6_aws_iam_login_profile_get() {
    local user_name="$1"
    shift 1

    p6_run_read_cmd aws iam get-login-profile --user-name $user_name "$@"
}