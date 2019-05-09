p6_aws_ec2_vpc_endpoint_service_configuration_create() {
    local network_load_balancer_arns="$1"
    shift 1

    p6_run_write_cmd aws ec2 create-vpc-endpoint-service-configuration --network-load-balancer-arns $network_load_balancer_arns "$@"
}
