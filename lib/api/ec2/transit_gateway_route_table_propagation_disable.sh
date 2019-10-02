######################################################################
#<
#
# Function:
#	p6_aws_ec2_transit_gateway_route_table_propagation_disable(transit_gateway_route_table_id, transit_gateway_attachment_id)
#
#  Args:
#	transit_gateway_route_table_id - 
#	transit_gateway_attachment_id - 
#
#>
######################################################################
p6_aws_ec2_transit_gateway_route_table_propagation_disable() {
    local transit_gateway_route_table_id="$1"
    local transit_gateway_attachment_id="$2"
    shift 2

    p6_run_write_cmd aws ec2 disable-transit-gateway-route-table-propagation --transit-gateway-route-table-id $transit_gateway_route_table_id --transit-gateway-attachment-id $transit_gateway_attachment_id "$@"
}