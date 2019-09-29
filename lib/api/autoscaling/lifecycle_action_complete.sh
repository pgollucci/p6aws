######################################################################
#<
#
# Function:
#      = p6_aws_autoscaling_lifecycle_action_complete(lifecycle_hook_name, auto_scaling_group_name, lifecycle_action_result)
#
# Arg(s):
#    lifecycle_hook_name - 
#    auto_scaling_group_name - 
#    lifecycle_action_result - 
#
#
#>
######################################################################
p6_aws_autoscaling_lifecycle_action_complete() {
    local lifecycle_hook_name="$1"
    local auto_scaling_group_name="$2"
    local lifecycle_action_result="$3"
    shift 3

    p6_run_write_cmd aws autoscaling complete-lifecycle-action --lifecycle-hook-name $lifecycle_hook_name --auto-scaling-group-name $auto_scaling_group_name --lifecycle-action-result $lifecycle_action_result "$@"
}