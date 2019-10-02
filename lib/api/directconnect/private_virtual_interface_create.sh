######################################################################
#<
#
# Function:
#	p6_aws_directconnect_private_virtual_interface_create(connection_id, new_private_virtual_interface)
#
#  Args:
#	connection_id - 
#	new_private_virtual_interface - 
#
#>
######################################################################
p6_aws_directconnect_private_virtual_interface_create() {
    local connection_id="$1"
    local new_private_virtual_interface="$2"
    shift 2

    p6_run_write_cmd aws directconnect create-private-virtual-interface --connection-id $connection_id --new-private-virtual-interface $new_private_virtual_interface "$@"
}