######################################################################
#<
#
# Function:
#	p6_aws_dlm_lifecycle_policy_update(policy_id)
#
#  Args:
#	policy_id - 
#
#>
######################################################################
p6_aws_dlm_lifecycle_policy_update() {
    local policy_id="$1"
    shift 1

    p6_run_write_cmd aws dlm update-lifecycle-policy --policy-id $policy_id "$@"
}