p6_aws_ec2_svc_vpcs_list() {

    p6_aws_ec2_vpcs_describe \
	--output text \
	--filters "Name=isDefault,Values=false" \
	--query "'Vpcs[].[VpcId, CidrBlock, State, $P6_AWS_JQ_TAG_NAME]'"
}

p6_aws_ec2_svc_subnet_get() {
    local subnet_type="$1"
    local vpc_id="${2:-$AWS_VPC}"

    p6_aws_ec2_svc_subnet_ids_get "$subnet_type" "$vpc_id" | head -1
}

p6_aws_ec2_svc_subnet_ids_get() {
    local subnet_type="$1"
    local vpc_id="${2:-$AWS_VPC}"

    p6_aws_ec2_svc_subnets_list "$vpc_id" | awk "/$subnet_type/ { print \$1 }"
}

p6_aws_ec2_svc_subnets_list() {
    local vpc_id="${1:-$AWS_VPC}"

    p6_aws_ec2_subnets_describe \
	--output text \
	--filters "Name=vpc-id,Values=$vpc_id" \
	--query "'Subnets[].[SubnetId, AvailabilityZone, CidrBlock, AvailableIpAddressCount, DefaultForAz, MapPublicIpOnLaunch, $P6_AWS_JQ_TAG_NAME]'"
}

p6_aws_ec2_svc_rtbs_list() {
    local vpc_id="${1:-$AWS_VPC}"

    p6_aws_ec2_route_tables_describe \
	--output text \
	--filters "Name=vpc-id,Values=$vpc_id" \
	--query "'RouteTables[].[RouteTableId, Associations[0].SubnetId,Associations[0].RouteTableAssociationId, $P6_AWS_JQ_TAG_NAME]'"

    local rtb
    for rtb in $(p6_aws_ec2_route_tables_describe --output text --filters "Name=vpc-id,Values=$vpc_id" --query "'RouteTables[].[RouteTableId]'"); do
	p6_msg "=====> $rtb:"
	p6_aws_ec2_svc_rtb_show $rtb
    done
}

p6_aws_ec2_svc_rtb_show() {
    local vpc_id="${1:-$AWS_VPC}"

    p6_aws_ec2_route_tables_describe \
	--output text \
	--filters "Name=vpc-id,Values=$vpc_id,Name=route-table-id,Values=$1" \
	--query "'RouteTables[].[RouteTableId, Associations[0].SubnetId,Associations[0].RouteTableAssociationId, $P6_AWS_JQ_TAG_NAME]'"

    p6_aws_ec2_route_tables_describe \
	--output text \
	--filters "Name=route-table-id,Values=$1" \
	--query "'RouteTables[].[Routes[]]'"
}

p6_aws_ec2_svc_eni_list() {
    local vpc_id="${1:-$AWS_VPC}"

    p6_aws_ec2_network_interfaces_describe \
	--output text \
	--filters "Name=vpc-id,Values=$vpc_id" \
	--query "'NetworkInterfaces[].[NetworkInterfaceId, VpcId, SubnetId, AvailabilityZone, PrivateIpAddress, Status, Association.PublicIp, TagSet[0].Value]'"
}

p6_aws_ec2_svc_nat_gateway_show() {
    local vpc_id="${1:-$AWS_VPC}"

    p6_aws_ec2_nat_gateways_describe \
	--output text \
	--filter "Name=vpc-id,Values=$vpc_id" \
	--query "'NatGateways[].[NatGatewayId, SubnetId, NatGatewayAddresses[0].PrivateIp, NatGatewayAddresses[0].PublicIp, NatGatewayAddresses[0].NetworkInterfaceId, State, $P6_AWS_JQ_TAG_NAME]'"
}
