p6_aws_directconnect_transit_virtual_interface_confirm() {
    local virtual_interface_id="$1"
    local direct_connect_gateway_id="$2"
    shift 2

    p6_run_write_cmd aws directconnect confirm-transit-virtual-interface --virtual-interface-id $virtual_interface_id --direct-connect-gateway-id $direct_connect_gateway_id "$@"
}
