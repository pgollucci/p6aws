######################################################################
#<
#
# Function:
#      = p6_aws_directconnect_public_virtual_interface_create(connection_id, new_public_virtual_interface)
#
# Arg(s):
#    connection_id - 
#    new_public_virtual_interface - 
#
#
#>
######################################################################
p6_aws_directconnect_public_virtual_interface_create() {
    local connection_id="$1"
    local new_public_virtual_interface="$2"
    shift 2

    p6_run_write_cmd aws directconnect create-public-virtual-interface --connection-id $connection_id --new-public-virtual-interface $new_public_virtual_interface "$@"
}