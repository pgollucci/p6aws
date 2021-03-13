######################################################################
#<
#
# Function: p6_aws_svc_ec2_nat_gateway_show([vpc_id=$AWS_VPC_ID])
#
#  Args:
#	OPTIONAL vpc_id - [$AWS_VPC_ID]
#
#>
######################################################################
p6_aws_svc_ec2_nat_gateway_show() {
    local vpc_id="${1:-$AWS_VPC_ID}"

    local tag_name
    tag_name=$(p6_aws_cli_jq_tag_name_get)

    p6_aws_cli_cmd ec2 describe-network-interfaces \
        --output text \
        --filter "Name=vpc-id,Values=$vpc_id" \
        --query "'NatGateways[].[NatGatewayId, SubnetId, NatGatewayAddresses[0].PrivateIp, NatGatewayAddresses[0].PublicIp, NatGatewayAddresses[0].NetworkInterfaceId, State, $tag_name]'"

    p6_return_void
}