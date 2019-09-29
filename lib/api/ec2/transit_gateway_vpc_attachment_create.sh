######################################################################
#<
#
# Function:
#      = p6_aws_ec2_transit_gateway_vpc_attachment_create(transit_gateway_id, vpc_id, subnet_ids)
#
# Arg(s):
#    transit_gateway_id - 
#    vpc_id - 
#    subnet_ids - 
#
#
#>
######################################################################
p6_aws_ec2_transit_gateway_vpc_attachment_create() {
    local transit_gateway_id="$1"
    local vpc_id="$2"
    local subnet_ids="$3"
    shift 3

    p6_run_write_cmd aws ec2 create-transit-gateway-vpc-attachment --transit-gateway-id $transit_gateway_id --vpc-id $vpc_id --subnet-ids $subnet_ids "$@"
}