######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_policy_execute(policy_name)
#
#  Args:
#	policy_name - 
#
#>
######################################################################
p6_aws_autoscaling_policy_execute() {
    local policy_name="$1"
    shift 1

    p6_run_write_cmd aws autoscaling execute-policy --policy-name $policy_name "$@"
}