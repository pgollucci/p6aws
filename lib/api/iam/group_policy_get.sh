######################################################################
#<
#
# Function:
#	p6_aws_iam_group_policy_get(group_name, policy_name)
#
#  Args:
#	group_name - 
#	policy_name - 
#
#>
######################################################################
p6_aws_iam_group_policy_get() {
    local group_name="$1"
    local policy_name="$2"
    shift 2

    p6_run_read_cmd aws iam get-group-policy --group-name $group_name --policy-name $policy_name "$@"
}