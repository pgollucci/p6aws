######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_auto_scaling_notification_types_describe()
#
#>
######################################################################
p6_aws_autoscaling_auto_scaling_notification_types_describe() {

    p6_run_read_cmd aws autoscaling describe-auto-scaling-notification-types "$@"
}