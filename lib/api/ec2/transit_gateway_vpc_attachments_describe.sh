######################################################################
#<
#
# Function:
#      = p6_aws_ec2_transit_gateway_vpc_attachments_describe()
#
#
#
#>
######################################################################
p6_aws_ec2_transit_gateway_vpc_attachments_describe() {

    p6_run_read_cmd aws ec2 describe-transit-gateway-vpc-attachments "$@"
}