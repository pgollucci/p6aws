######################################################################
#<
#
# Function:
#	p6_aws_iam_policy_get(policy_arn)
#
#  Args:
#	policy_arn - 
#
#>
######################################################################
p6_aws_iam_policy_get() {
    local policy_arn="$1"
    shift 1

    p6_run_read_cmd aws iam get-policy --policy-arn $policy_arn "$@"
}