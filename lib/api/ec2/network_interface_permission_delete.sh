######################################################################
#<
#
# Function:
#	p6_aws_ec2_network_interface_permission_delete(network_interface_permission_id)
#
#  Args:
#	network_interface_permission_id - 
#
#>
######################################################################
p6_aws_ec2_network_interface_permission_delete() {
    local network_interface_permission_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 delete-network-interface-permission --network-interface-permission-id $network_interface_permission_id "$@"
}