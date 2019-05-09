p6_aws_autoscaling_plans_scaling_plan_delete() {
    local scaling_plan_name="$1"
    local scaling_plan_version="$2"
    shift 2

    p6_run_write_cmd aws autoscaling-plans delete-scaling-plan --scaling-plan-name $scaling_plan_name --scaling-plan-version $scaling_plan_version "$@"
}
