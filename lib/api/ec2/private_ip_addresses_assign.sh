######################################################################
#<
#
# Function:
#	p6_aws_ec2_private_ip_addresses_assign(network_interface_id)
#
#  Args:
#	network_interface_id - 
#
#>
######################################################################
p6_aws_ec2_private_ip_addresses_assign() {
    local network_interface_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 assign-private-ip-addresses --network-interface-id $network_interface_id "$@"
}