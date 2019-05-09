p6_aws_autoscaling_processes_resume() {
    local auto_scaling_group_name="$1"
    shift 1

    p6_run_write_cmd aws autoscaling resume-processes --auto-scaling-group-name $auto_scaling_group_name "$@"
}
