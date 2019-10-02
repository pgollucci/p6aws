######################################################################
#<
#
# Function:
#	p6_aws_autoscaling_notification_configurations_describe()
#
#>
######################################################################
p6_aws_autoscaling_notification_configurations_describe() {

    p6_run_read_cmd aws autoscaling describe-notification-configurations "$@"
}