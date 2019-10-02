######################################################################
#<
#
# Function:
#	p6_aws_iam_role_update(role_name)
#
#  Args:
#	role_name - 
#
#>
######################################################################
p6_aws_iam_role_update() {
    local role_name="$1"
    shift 1

    p6_run_write_cmd aws iam update-role --role-name $role_name "$@"
}