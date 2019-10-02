######################################################################
#<
#
# Function:
#	p6_aws_iam_group_policy_detach(group_name, policy_arn)
#
#  Args:
#	group_name - 
#	policy_arn - 
#
#>
######################################################################
p6_aws_iam_group_policy_detach() {
    local group_name="$1"
    local policy_arn="$2"
    shift 2

    p6_run_write_cmd aws iam detach-group-policy --group-name $group_name --policy-arn $policy_arn "$@"
}