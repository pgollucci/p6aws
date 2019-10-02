######################################################################
#<
#
# Function:
#	p6_aws_iam_role_delete(role_name)
#
#  Args:
#	role_name - 
#
#>
######################################################################
p6_aws_iam_role_delete() {
    local role_name="$1"
    shift 1

    p6_run_write_cmd aws iam delete-role --role-name $role_name "$@"
}