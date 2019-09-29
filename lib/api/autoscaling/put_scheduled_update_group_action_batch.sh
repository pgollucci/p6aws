######################################################################
#<
#
# Function:
#      = p6_aws_autoscaling_put_scheduled_update_group_action_batch(auto_scaling_group_name, scheduled_update_group_actions)
#
# Arg(s):
#    auto_scaling_group_name - 
#    scheduled_update_group_actions - 
#
#
#>
######################################################################
p6_aws_autoscaling_put_scheduled_update_group_action_batch() {
    local auto_scaling_group_name="$1"
    local scheduled_update_group_actions="$2"
    shift 2

    p6_run_write_cmd aws autoscaling batch-put-scheduled-update-group-action --auto-scaling-group-name $auto_scaling_group_name --scheduled-update-group-actions $scheduled_update_group_actions "$@"
}