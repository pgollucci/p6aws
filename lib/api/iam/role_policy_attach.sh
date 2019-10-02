######################################################################
#<
#
# Function:
#	p6_aws_iam_role_policy_attach(role_name, policy_arn)
#
#  Args:
#	role_name - 
#	policy_arn - 
#
#>
######################################################################
p6_aws_iam_role_policy_attach() {
    local role_name="$1"
    local policy_arn="$2"
    shift 2

    p6_run_write_cmd aws iam attach-role-policy --role-name $role_name --policy-arn $policy_arn "$@"
}