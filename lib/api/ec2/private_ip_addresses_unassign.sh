######################################################################
#<
#
# Function:
#	p6_aws_ec2_private_ip_addresses_unassign(network_interface_id, private_ip_addresses)
#
#  Args:
#	network_interface_id - 
#	private_ip_addresses - 
#
#>
######################################################################
p6_aws_ec2_private_ip_addresses_unassign() {
    local network_interface_id="$1"
    local private_ip_addresses="$2"
    shift 2

    p6_run_write_cmd aws ec2 unassign-private-ip-addresses --network-interface-id $network_interface_id --private-ip-addresses $private_ip_addresses "$@"
}