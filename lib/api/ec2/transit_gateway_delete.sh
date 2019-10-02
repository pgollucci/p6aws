######################################################################
#<
#
# Function:
#	p6_aws_ec2_transit_gateway_delete(transit_gateway_id)
#
#  Args:
#	transit_gateway_id - 
#
#>
######################################################################
p6_aws_ec2_transit_gateway_delete() {
    local transit_gateway_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-transit-gateway --transit-gateway-id $transit_gateway_id "$@"
}