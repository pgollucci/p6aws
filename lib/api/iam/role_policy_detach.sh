######################################################################
#<
#
# Function:
#      = p6_aws_iam_role_policy_detach(role_name, policy_arn)
#
# Arg(s):
#    role_name - 
#    policy_arn - 
#
#
#>
######################################################################
p6_aws_iam_role_policy_detach() {
    local role_name="$1"
    local policy_arn="$2"
    shift 2

    p6_run_write_cmd aws iam detach-role-policy --role-name $role_name --policy-arn $policy_arn "$@"
}