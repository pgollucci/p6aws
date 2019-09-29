######################################################################
#<
#
# Function:
#      = p6_aws_autoscaling_plans_scaling_plan_create(scaling_plan_name, application_source, scaling_instructions)
#
# Arg(s):
#    scaling_plan_name - 
#    application_source - 
#    scaling_instructions - 
#
#
#>
######################################################################
p6_aws_autoscaling_plans_scaling_plan_create() {
    local scaling_plan_name="$1"
    local application_source="$2"
    local scaling_instructions="$3"
    shift 3

    p6_run_write_cmd aws autoscaling-plans create-scaling-plan --scaling-plan-name $scaling_plan_name --application-source $application_source --scaling-instructions $scaling_instructions "$@"
}