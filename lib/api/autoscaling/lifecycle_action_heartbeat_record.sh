p6_aws_autoscaling_lifecycle_action_heartbeat_record() {
    local lifecycle_hook_name="$1"
    local auto_scaling_group_name="$2"
    shift 2

    p6_run_write_cmd aws autoscaling record-lifecycle-action-heartbeat --lifecycle-hook-name $lifecycle_hook_name --auto-scaling-group-name $auto_scaling_group_name "$@"
}
