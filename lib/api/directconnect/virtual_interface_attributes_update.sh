p6_aws_directconnect_virtual_interface_attributes_update() {
    local virtual_interface_id="$1"
    shift 1

    p6_run_write_cmd aws directconnect update-virtual-interface-attributes --virtual-interface-id $virtual_interface_id "$@"
}
