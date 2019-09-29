######################################################################
#<
#
# Function:
#      = p6_aws_autoscaling_delete_scheduled_action_batch(auto_scaling_group_name, scheduled_action_names)
#
# Arg(s):
#    auto_scaling_group_name - 
#    scheduled_action_names - 
#
#
#>
######################################################################
p6_aws_autoscaling_delete_scheduled_action_batch() {
    local auto_scaling_group_name="$1"
    local scheduled_action_names="$2"
    shift 2

    p6_run_write_cmd aws autoscaling batch-delete-scheduled-action --auto-scaling-group-name $auto_scaling_group_name --scheduled-action-names $scheduled_action_names "$@"
}