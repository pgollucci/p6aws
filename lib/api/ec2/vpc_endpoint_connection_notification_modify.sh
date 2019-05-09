p6_aws_ec2_vpc_endpoint_connection_notification_modify() {
    local connection_notification_id="$1"
    shift 1

    p6_log_or_run aws ec2 modify-vpc-endpoint-connection-notification --connection-notification-id $connection_notification_id "$@"
}
