######################################################################
#<
#
# Function:
#	p6_aws_iam_attached_role_policies_list(role_name)
#
#  Args:
#	role_name - 
#
#>
######################################################################
p6_aws_iam_attached_role_policies_list() {
    local role_name="$1"
    shift 1

    p6_run_read_cmd aws iam list-attached-role-policies --role-name $role_name "$@"
}