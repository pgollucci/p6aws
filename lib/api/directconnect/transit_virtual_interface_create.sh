######################################################################
#<
#
# Function:
#      = p6_aws_directconnect_transit_virtual_interface_create(connection_id, new_transit_virtual_interface)
#
# Arg(s):
#    connection_id - 
#    new_transit_virtual_interface - 
#
#
#>
######################################################################
p6_aws_directconnect_transit_virtual_interface_create() {
    local connection_id="$1"
    local new_transit_virtual_interface="$2"
    shift 2

    p6_run_write_cmd aws directconnect create-transit-virtual-interface --connection-id $connection_id --new-transit-virtual-interface $new_transit_virtual_interface "$@"
}