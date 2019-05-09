p6_aws_ec2_vpc_endpoint_service_permissions_describe() {
    local service_id="$1"
    shift 1

    p6_log_and_run aws ec2 describe-vpc-endpoint-service-permissions --service-id $service_id "$@"
}
