p6_aws_autoscaling_load_balancer_target_groups_detach() {
    local auto_scaling_group_name="$1"
    local target_group_arns="$2"
    shift 2

    p6_run_read_cmd aws autoscaling detach-load-balancer-target-groups --auto-scaling-group-name $auto_scaling_group_name --target-group-arns $target_group_arns "$@"
}
