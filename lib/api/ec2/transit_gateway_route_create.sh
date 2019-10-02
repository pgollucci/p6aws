######################################################################
#<
#
# Function:
#	p6_aws_ec2_transit_gateway_route_create(destination_cidr_block, transit_gateway_route_table_id)
#
#  Args:
#	destination_cidr_block - 
#	transit_gateway_route_table_id - 
#
#>
######################################################################
p6_aws_ec2_transit_gateway_route_create() {
    local destination_cidr_block="$1"
    local transit_gateway_route_table_id="$2"
    shift 2

    p6_run_write_cmd aws ec2 create-transit-gateway-route --destination-cidr-block $destination_cidr_block --transit-gateway-route-table-id $transit_gateway_route_table_id "$@"
}