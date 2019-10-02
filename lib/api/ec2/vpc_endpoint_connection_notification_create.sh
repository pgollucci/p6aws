######################################################################
#<
#
# Function:
#	p6_aws_ec2_vpc_endpoint_connection_notification_create(connection_notification_arn, connection_events)
#
#  Args:
#	connection_notification_arn - 
#	connection_events - 
#
#>
######################################################################
p6_aws_ec2_vpc_endpoint_connection_notification_create() {
    local connection_notification_arn="$1"
    local connection_events="$2"
    shift 2

    p6_run_write_cmd aws ec2 create-vpc-endpoint-connection-notification --connection-notification-arn $connection_notification_arn --connection-events $connection_events "$@"
}