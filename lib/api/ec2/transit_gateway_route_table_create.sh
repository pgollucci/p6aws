######################################################################
#<
#
# Function:
#	p6_aws_ec2_transit_gateway_route_table_create(transit_gateway_id)
#
#  Args:
#	transit_gateway_id - 
#
#>
######################################################################
p6_aws_ec2_transit_gateway_route_table_create() {
    local transit_gateway_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 create-transit-gateway-route-table --transit-gateway-id $transit_gateway_id "$@"
}