######################################################################
#<
#
# Function:
#	p6_aws_codestar_user_profile_describe(user_arn)
#
#  Args:
#	user_arn - 
#
#>
######################################################################
p6_aws_codestar_user_profile_describe() {
    local user_arn="$1"
    shift 1

    p6_run_read_cmd aws codestar describe-user-profile --user-arn $user_arn "$@"
}