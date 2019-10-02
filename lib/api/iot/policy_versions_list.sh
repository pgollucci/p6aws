######################################################################
#<
#
# Function:
#	p6_aws_iot_policy_versions_list(policy_name)
#
#  Args:
#	policy_name - 
#
#>
######################################################################
p6_aws_iot_policy_versions_list() {
    local policy_name="$1"
    shift 1

    p6_run_read_cmd aws iot list-policy-versions --policy-name $policy_name "$@"
}