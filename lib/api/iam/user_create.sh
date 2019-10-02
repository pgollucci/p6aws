######################################################################
#<
#
# Function:
#	p6_aws_iam_user_create(user_name)
#
#  Args:
#	user_name - 
#
#>
######################################################################
p6_aws_iam_user_create() {
    local user_name="$1"
    shift 1

    p6_run_write_cmd aws iam create-user --user-name $user_name "$@"
}