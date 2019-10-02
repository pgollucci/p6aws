######################################################################
#<
#
# Function:
#	p6_aws_iam_role_policy_delete(role_name, policy_name)
#
#  Args:
#	role_name - 
#	policy_name - 
#
#>
######################################################################
p6_aws_iam_role_policy_delete() {
    local role_name="$1"
    local policy_name="$2"
    shift 2

    p6_run_write_cmd aws iam delete-role-policy --role-name $role_name --policy-name $policy_name "$@"
}