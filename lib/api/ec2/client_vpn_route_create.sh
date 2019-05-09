p6_aws_ec2_client_vpn_route_create() {
    local client_vpn_endpoint_id="$1"
    local destination_cidr_block="$2"
    local target_vpc_subnet_id="$3"
    shift 3

    p6_run_write_cmd aws ec2 create-client-vpn-route --client-vpn-endpoint-id $client_vpn_endpoint_id --destination-cidr-block $destination_cidr_block --target-vpc-subnet-id $target_vpc_subnet_id "$@"
}
