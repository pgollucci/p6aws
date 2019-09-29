######################################################################
#<
#
# Function:
#      = p6_aws_directconnect_virtual_interface_associate(virtual_interface_id, connection_id)
#
# Arg(s):
#    virtual_interface_id - 
#    connection_id - 
#
#
#>
######################################################################
p6_aws_directconnect_virtual_interface_associate() {
    local virtual_interface_id="$1"
    local connection_id="$2"
    shift 2

    p6_run_write_cmd aws directconnect associate-virtual-interface --virtual-interface-id $virtual_interface_id --connection-id $connection_id "$@"
}