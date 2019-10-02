######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_plans_scaling_plan_resources_describe(scaling_plan_name, scaling_plan_version)
#
#  Args:
#	scaling_plan_name - 
#	scaling_plan_version - 
#
#>
######################################################################
p6_aws_autoscaling_plans_scaling_plan_resources_describe() {
    local scaling_plan_name="$1"
    local scaling_plan_version="$2"
    shift 2

    p6_run_read_cmd aws autoscaling-plans describe-scaling-plan-resources --scaling-plan-name $scaling_plan_name --scaling-plan-version $scaling_plan_version "$@"
}