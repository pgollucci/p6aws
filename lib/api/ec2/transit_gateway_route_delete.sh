######################################################################
#<
#
# Function:
#      = p6_aws_ec2_transit_gateway_route_delete(transit_gateway_route_table_id, destination_cidr_block)
#
# Arg(s):
#    transit_gateway_route_table_id - 
#    destination_cidr_block - 
#
#
#>
######################################################################
p6_aws_ec2_transit_gateway_route_delete() {
    local transit_gateway_route_table_id="$1"
    local destination_cidr_block="$2"
    shift 2

    p6_run_write_cmd aws ec2 delete-transit-gateway-route --transit-gateway-route-table-id $transit_gateway_route_table_id --destination-cidr-block $destination_cidr_block "$@"
}