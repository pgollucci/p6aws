######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_launch_configurations_describe()
#
#>
######################################################################
p6_aws_autoscaling_launch_configurations_describe() {

    p6_run_read_cmd aws autoscaling describe-launch-configurations "$@"
}