######################################################################
#<
#
# Function:
#	p6_aws_ec2_network_interface_delete(network_interface_id)
#
#  Args:
#	network_interface_id - 
#
#>
######################################################################
p6_aws_ec2_network_interface_delete() {
    local network_interface_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-network-interface --network-interface-id $network_interface_id "$@"
}