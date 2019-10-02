######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_auto_scaling_instances_describe()
#
#>
######################################################################
p6_aws_autoscaling_auto_scaling_instances_describe() {

    p6_run_read_cmd aws autoscaling describe-auto-scaling-instances "$@"
}