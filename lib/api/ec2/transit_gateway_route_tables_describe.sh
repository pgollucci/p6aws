######################################################################
#<
#
# Function:
#      = p6_aws_ec2_transit_gateway_route_tables_describe()
#
#
#
#>
######################################################################
p6_aws_ec2_transit_gateway_route_tables_describe() {

    p6_run_read_cmd aws ec2 describe-transit-gateway-route-tables "$@"
}