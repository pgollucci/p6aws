p6_aws_directconnect_public_virtual_interface_confirm() {
    local virtual_interface_id="$1"
    shift 1

    p6_run_write_cmd aws directconnect confirm-public-virtual-interface --virtual-interface-id $virtual_interface_id "$@"
}
