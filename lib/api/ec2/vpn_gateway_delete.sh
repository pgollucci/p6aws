######################################################################
#<
#
# Function:
#	p6_aws_ec2_vpn_gateway_delete(vpn_gateway_id)
#
#  Args:
#	vpn_gateway_id - 
#
#>
######################################################################
p6_aws_ec2_vpn_gateway_delete() {
    local vpn_gateway_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-vpn-gateway --vpn-gateway-id $vpn_gateway_id "$@"
}