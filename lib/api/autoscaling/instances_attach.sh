p6_aws_autoscaling_instances_attach() {
    local auto_scaling_group_name="$1"
    shift 1

    p6_run_write_cmd aws autoscaling attach-instances --auto-scaling-group-name $auto_scaling_group_name "$@"
}
