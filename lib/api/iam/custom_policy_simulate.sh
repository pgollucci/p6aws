######################################################################
#<
#
# Function:
#	p6_aws_iam_custom_policy_simulate(policy_input_list, action_names)
#
#  Args:
#	policy_input_list - 
#	action_names - 
#
#>
######################################################################
p6_aws_iam_custom_policy_simulate() {
    local policy_input_list="$1"
    local action_names="$2"
    shift 2

    p6_run_write_cmd aws iam simulate-custom-policy --policy-input-list $policy_input_list --action-names $action_names "$@"
}