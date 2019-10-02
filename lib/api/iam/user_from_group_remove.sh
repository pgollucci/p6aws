######################################################################
#<
#
# Function:
#	p6_aws_iam_user_from_group_remove(group_name, user_name)
#
#  Args:
#	group_name - 
#	user_name - 
#
#>
######################################################################
p6_aws_iam_user_from_group_remove() {
    local group_name="$1"
    local user_name="$2"
    shift 2

    p6_run_write_cmd aws iam remove-user-from-group --group-name $group_name --user-name $user_name "$@"
}