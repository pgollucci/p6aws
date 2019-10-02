######################################################################
#<
#
# Function:
#	p6_aws_directconnect_public_virtual_interface_allocate(connection_id, owner_account, new_public_virtual_interface_allocation)
#
#  Args:
#	connection_id - 
#	owner_account - 
#	new_public_virtual_interface_allocation - 
#
#>
######################################################################
p6_aws_directconnect_public_virtual_interface_allocate() {
    local connection_id="$1"
    local owner_account="$2"
    local new_public_virtual_interface_allocation="$3"
    shift 3

    p6_run_write_cmd aws directconnect allocate-public-virtual-interface --connection-id $connection_id --owner-account $owner_account --new-public-virtual-interface-allocation $new_public_virtual_interface_allocation "$@"
}