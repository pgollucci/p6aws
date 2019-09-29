######################################################################
#<
#
# Function:
#      = p6_aws_ec2_transit_gateway_vpc_attachment_modify(transit_gateway_attachment_id)
#
# Arg(s):
#    transit_gateway_attachment_id - 
#
#
#>
######################################################################
p6_aws_ec2_transit_gateway_vpc_attachment_modify() {
    local transit_gateway_attachment_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 modify-transit-gateway-vpc-attachment --transit-gateway-attachment-id $transit_gateway_attachment_id "$@"
}