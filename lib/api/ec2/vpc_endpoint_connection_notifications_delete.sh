p6_aws_ec2_vpc_endpoint_connection_notifications_delete() {
    local connection_notification_ids="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-vpc-endpoint-connection-notifications --connection-notification-ids $connection_notification_ids "$@"
}
