######################################################################
#<
#
# Function: p6_aws_ec2_svc_vpcs_list()
#
#>
######################################################################
p6_aws_ec2_svc_vpcs_list() {

    local tag_name=$(p6_aws_cli_jq_tag_name_get)

    p6_aws_cmd ec2 describe-vpcs \
	--output text \
	--filters "Name=isDefault,Values=false" \
	--query "'Vpcs[].[VpcId, CidrBlock, State, $tag_name]'"

    p6_return_void
}

p6_aws_ec2_svc_vpcs_iterator() {
    
    local save_vpc_id=$(p6_aws_cfg_env_vpc_id_active)
    local vpc_id
    for vpc_id in $(p6_aws_ec2_svc_vpcs_list | awk '{print $1}'); do
        p6_msg "====> $vpc_id"
        p6_aws_cfg_env_vpc_id_active "$vpc_id" >/dev/null
        p6_run_code "$@"
        p6_msg
    done

    p6_aws_cfg_env_vpc_id_active "$save_vpc_id" >/dev/null
}

######################################################################
#<
#
# Function: p6_aws_ec2_svc_subnet_get(subnet_type, [vpc_id=$AWS_VPC_ID])
#
#  Args:
#	subnet_type - 
#	OPTIONAL vpc_id -  [$AWS_VPC_ID]
#
#>
######################################################################
p6_aws_ec2_svc_subnet_get() {
    local subnet_type="$1"
    local vpc_id="${2:-$AWS_VPC_ID}"

    local subnet_id=$(p6_aws_ec2_svc_subnet_ids_get "$subnet_type" "$vpc_id" | head -1)

    p6_return_aws_subnet_id "$subnet_id"
}

######################################################################
#<
#
# Function: words subnet_ids = p6_aws_ec2_svc_subnet_ids_get(subnet_type, [vpc_id=$AWS_VPC_ID])
#
#  Args:
#	subnet_type - 
#	OPTIONAL vpc_id -  [$AWS_VPC_ID]
#
#  Returns:
#	words - subnet_ids
#
#>
######################################################################
p6_aws_ec2_svc_subnet_ids_get() {
    local subnet_type="$1"
    local vpc_id="${2:-$AWS_VPC_ID}"

    local subnet_ids=$(p6_aws_ec2_svc_subnets_list "$vpc_id" | awk "/$subnet_type/ { print \$1 }")

    p6_return_words "$subnet_ids"
}

######################################################################
#<
#
# Function: p6_aws_ec2_svc_subnets_list([vpc_id=$AWS_VPC_ID])
#
#  Args:
#	OPTIONAL vpc_id -  [$AWS_VPC_ID]
#
#>
######################################################################
p6_aws_ec2_svc_subnets_list() {
    local vpc_id="${1:-$AWS_VPC_ID}"

    local tag_name=$(p6_aws_cli_jq_tag_name_get)

    p6_aws_cmd ec2 describe-subnets \
	--output text \
	--filters "Name=vpc-id,Values=$vpc_id" \
	--query "'Subnets[].[SubnetId, AvailabilityZone, CidrBlock, AvailableIpAddressCount, DefaultForAz, MapPublicIpOnLaunch, $tag_name]'"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_ec2_svc_rtbs_list([vpc_id=$AWS_VPC_ID])
#
#  Args:
#	OPTIONAL vpc_id -  [$AWS_VPC_ID]
#
#>
######################################################################
p6_aws_ec2_svc_rtbs_list() {
    local vpc_id="${1:-$AWS_VPC_ID}"

    local tag_name=$(p6_aws_cli_jq_tag_name_get)

    p6_aws_cmd "ec2" "describe-route-tables" \
	--output text \
	--filters "Name=vpc-id,Values=$vpc_id" \
	--query "'RouteTables[].[RouteTableId, Associations[0].SubnetId,Associations[0].RouteTableAssociationId, $tag_name]'"

    local rtb
    for rtb in $(p6_aws_cmd ec2 describe-route-tables --output text --filters "Name=vpc-id,Values=$vpc_id" --query "'RouteTables[].[RouteTableId]'"); do
	p6_msg "=====> $rtb:"
	p6_aws_ec2_svc_rtb_show "$rtb"
    done

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_ec2_svc_rtb_show(rtb_id, [vpc_id=$AWS_VPC_ID])
#
#  Args:
#	rtb_id - 
#	OPTIONAL vpc_id -  [$AWS_VPC_ID]
#
#>
######################################################################
p6_aws_ec2_svc_rtb_show() {
    local rtb_id="$1"
    local vpc_id="${2:-$AWS_VPC_ID}"

    local tag_name=$(p6_aws_cli_jq_tag_name_get)

    p6_aws_cmd ec2 describe-route-tables \
	--output text \
	--filters "Name=vpc-id,Values=$vpc_id,Name=route-table-id,Values=$rtb_id" \
	--query "'RouteTables[].[RouteTableId, Associations[0].SubnetId,Associations[0].RouteTableAssociationId, $tag_name]'"

    p6_aws_cmd ec2 describe-route-tables \
	--output text \
	--filters "Name=route-table-id,Values=$rtb_id" \
	--query "'RouteTables[].[Routes[]]'"

    p6_return_void
}

######################################################################
#<
#
# Function: p6_aws_ec2_svc_eni_list([vpc_id=$AWS_VPC_ID])
#
#  Args:
#	OPTIONAL vpc_id -  [$AWS_VPC_ID]
#
#>
######################################################################
p6_aws_ec2_svc_eni_list() {
    local vpc_id="${1:-$AWS_VPC_ID}"

    p6_aws_cmd ec2 describe-network-interfaces \
	--output text \
	--filters "Name=vpc-id,Values=$vpc_id" \
	--query "'NetworkInterfaces[].[NetworkInterfaceId, VpcId, SubnetId, AvailabilityZone, PrivateIpAddress, Status, Association.PublicIp, TagSet[0].Value]'"

    p6_return_void
}

p6_aws_ec2_svc_regions_iterator() {
    
    local save_region=$(p6_aws_cfg_env_region_active)
    local region
    for region in $(p6_aws_ec2_svc_regions_list); do
        p6_msg "====> $region"
        p6_aws_cfg_env_region_active "$region" >/dev/null
        p6_run_code "$@"
        p6_msg
    done

    p6_aws_cfg_env_region_active "$save_region" >/dev/null
}

p6_aws_ec2_svc_regions_list() {

    p6_aws_cmd ec2 describe-regions \
    --output text \
    --filters Name="'region-name,Values=us-*'" \
    --query "'Regions[].[RegionName]'" | \
    sort
}

######################################################################
#<
#
# Function: p6_aws_ec2_svc_nat_gateway_show([vpc_id=$AWS_VPC_ID])
#
#  Args:
#	OPTIONAL vpc_id -  [$AWS_VPC_ID]
#
#>
######################################################################
p6_aws_ec2_svc_nat_gateway_show() {
    local vpc_id="${1:-$AWS_VPC_ID}"

    local tag_name=$(p6_aws_cli_jq_tag_name_get)

    p6_aws_cmd ec2 describe-network-interfaces \
	--output text \
	--filter "Name=vpc-id,Values=$vpc_id" \
	--query "'NatGateways[].[NatGatewayId, SubnetId, NatGatewayAddresses[0].PrivateIp, NatGatewayAddresses[0].PublicIp, NatGatewayAddresses[0].NetworkInterfaceId, State, $tag_name]'"

    p6_return_void
}
