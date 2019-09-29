######################################################################
#<
#
# Function:
#      = p6_aws_autoscaling_scheduled_action_delete(auto_scaling_group_name, scheduled_action_name)
#
# Arg(s):
#    auto_scaling_group_name - 
#    scheduled_action_name - 
#
#
#>
######################################################################
p6_aws_autoscaling_scheduled_action_delete() {
    local auto_scaling_group_name="$1"
    local scheduled_action_name="$2"
    shift 2

    p6_run_write_cmd aws autoscaling delete-scheduled-action --auto-scaling-group-name $auto_scaling_group_name --scheduled-action-name $scheduled_action_name "$@"
}