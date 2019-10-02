######################################################################
#<
#
# Function:
#	p6_aws_iam_user_policies_list(user_name)
#
#  Args:
#	user_name - 
#
#>
######################################################################
p6_aws_iam_user_policies_list() {
    local user_name="$1"
    shift 1

    p6_run_read_cmd aws iam list-user-policies --user-name $user_name "$@"
}