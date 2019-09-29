######################################################################
#<
#
# Function:
#      = p6_aws_ec2_transit_gateway_route_replace(destination_cidr_block, transit_gateway_route_table_id)
#
# Arg(s):
#    destination_cidr_block - 
#    transit_gateway_route_table_id - 
#
#
#>
######################################################################
p6_aws_ec2_transit_gateway_route_replace() {
    local destination_cidr_block="$1"
    local transit_gateway_route_table_id="$2"
    shift 2

    p6_run_write_cmd aws ec2 replace-transit-gateway-route --destination-cidr-block $destination_cidr_block --transit-gateway-route-table-id $transit_gateway_route_table_id "$@"
}