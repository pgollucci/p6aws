######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_scheduled_update_group_action_put(auto_scaling_group_name, scheduled_action_name)
#
#  Args:
#	auto_scaling_group_name - 
#	scheduled_action_name - 
#
#>
######################################################################
p6_aws_autoscaling_scheduled_update_group_action_put() {
    local auto_scaling_group_name="$1"
    local scheduled_action_name="$2"
    shift 2

    p6_run_write_cmd aws autoscaling put-scheduled-update-group-action --auto-scaling-group-name $auto_scaling_group_name --scheduled-action-name $scheduled_action_name "$@"
}