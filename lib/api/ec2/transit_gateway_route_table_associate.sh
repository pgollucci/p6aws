######################################################################
#<
#
# Function:
#      = p6_aws_ec2_transit_gateway_route_table_associate(transit_gateway_route_table_id, transit_gateway_attachment_id)
#
# Arg(s):
#    transit_gateway_route_table_id - 
#    transit_gateway_attachment_id - 
#
#
#>
######################################################################
p6_aws_ec2_transit_gateway_route_table_associate() {
    local transit_gateway_route_table_id="$1"
    local transit_gateway_attachment_id="$2"
    shift 2

    p6_run_write_cmd aws ec2 associate-transit-gateway-route-table --transit-gateway-route-table-id $transit_gateway_route_table_id --transit-gateway-attachment-id $transit_gateway_attachment_id "$@"
}