######################################################################
#<
#
# Function:
#	p6_aws_iam_group_policy_put(group_name, policy_name, policy_document)
#
#  Args:
#	group_name - 
#	policy_name - 
#	policy_document - 
#
#>
######################################################################
p6_aws_iam_group_policy_put() {
    local group_name="$1"
    local policy_name="$2"
    local policy_document="$3"
    shift 3

    p6_run_write_cmd aws iam put-group-policy --group-name $group_name --policy-name $policy_name --policy-document $policy_document "$@"
}