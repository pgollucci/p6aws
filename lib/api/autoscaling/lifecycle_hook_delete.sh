p6_aws_autoscaling_lifecycle_hook_delete() {
    local lifecycle_hook_name="$1"
    local auto_scaling_group_name="$2"
    shift 2

    p6_run_write_cmd aws autoscaling delete-lifecycle-hook --lifecycle-hook-name $lifecycle_hook_name --auto-scaling-group-name $auto_scaling_group_name "$@"
}
