p6_aws_ec2_vpc_endpoint_service_configurations_delete() {
    local service_ids="$1"
    shift 1

    p6_log_or_run aws ec2 delete-vpc-endpoint-service-configurations --service-ids $service_ids "$@"
}
