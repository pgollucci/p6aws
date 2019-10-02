######################################################################
#<
#
# Function:
#	p6_aws_ec2_transit_gateway_routes_search(transit_gateway_route_table_id, filters)
#
#  Args:
#	transit_gateway_route_table_id - 
#	filters - 
#
#>
######################################################################
p6_aws_ec2_transit_gateway_routes_search() {
    local transit_gateway_route_table_id="$1"
    local filters="$2"
    shift 2

    p6_run_write_cmd aws ec2 search-transit-gateway-routes --transit-gateway-route-table-id $transit_gateway_route_table_id --filters $filters "$@"
}