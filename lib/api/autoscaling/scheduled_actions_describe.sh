######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_scheduled_actions_describe()
#
#>
######################################################################
p6_aws_autoscaling_scheduled_actions_describe() {

    p6_run_read_cmd aws autoscaling describe-scheduled-actions "$@"
}