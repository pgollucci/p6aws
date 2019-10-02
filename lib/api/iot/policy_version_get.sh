######################################################################
#<
#
# Function:
#	p6_aws_iot_policy_version_get(policy_name, policy_version_id)
#
#  Args:
#	policy_name - 
#	policy_version_id - 
#
#>
######################################################################
p6_aws_iot_policy_version_get() {
    local policy_name="$1"
    local policy_version_id="$2"
    shift 2

    p6_run_read_cmd aws iot get-policy-version --policy-name $policy_name --policy-version-id $policy_version_id "$@"
}