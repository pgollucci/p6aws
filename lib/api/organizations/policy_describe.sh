######################################################################
#<
#
# Function:
#	p6_aws_organizations_policy_describe(policy_id)
#
#  Args:
#	policy_id - 
#
#>
######################################################################
p6_aws_organizations_policy_describe() {
    local policy_id="$1"
    shift 1

    p6_run_read_cmd aws organizations describe-policy --policy-id $policy_id "$@"
}