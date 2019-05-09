p6_aws_ec2_vpc_endpoint_service_configuration_modify() {
    local service_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 modify-vpc-endpoint-service-configuration --service-id $service_id "$@"
}
