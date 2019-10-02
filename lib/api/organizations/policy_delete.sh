######################################################################
#<
#
# Function:
#	p6_aws_organizations_policy_delete(policy_id)
#
#  Args:
#	policy_id - 
#
#>
######################################################################
p6_aws_organizations_policy_delete() {
    local policy_id="$1"
    shift 1

    p6_run_write_cmd aws organizations delete-policy --policy-id $policy_id "$@"
}