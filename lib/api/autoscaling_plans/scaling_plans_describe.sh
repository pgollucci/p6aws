######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_plans_scaling_plans_describe()
#
#>
######################################################################
p6_aws_autoscaling_plans_scaling_plans_describe() {

    p6_run_read_cmd aws autoscaling-plans describe-scaling-plans "$@"
}