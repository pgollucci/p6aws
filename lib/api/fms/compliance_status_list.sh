######################################################################
#<
#
# Function:
#	p6_aws_fms_compliance_status_list(policy_id)
#
#  Args:
#	policy_id - 
#
#>
######################################################################
p6_aws_fms_compliance_status_list() {
    local policy_id="$1"
    shift 1

    p6_run_read_cmd aws fms list-compliance-status --policy-id $policy_id "$@"
}