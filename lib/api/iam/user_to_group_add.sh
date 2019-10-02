######################################################################
#<
#
# Function:
#	p6_aws_iam_user_to_group_add(group_name, user_name)
#
#  Args:
#	group_name - 
#	user_name - 
#
#>
######################################################################
p6_aws_iam_user_to_group_add() {
    local group_name="$1"
    local user_name="$2"
    shift 2

    p6_run_write_cmd aws iam add-user-to-group --group-name $group_name --user-name $user_name "$@"
}