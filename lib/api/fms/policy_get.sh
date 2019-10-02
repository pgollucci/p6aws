######################################################################
#<
#
# Function:
#	p6_aws_fms_policy_get(policy_id)
#
#  Args:
#	policy_id - 
#
#>
######################################################################
p6_aws_fms_policy_get() {
    local policy_id="$1"
    shift 1

    p6_run_read_cmd aws fms get-policy --policy-id $policy_id "$@"
}