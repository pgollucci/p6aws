p6_aws_directconnect_virtual_interface_delete() {
    local virtual_interface_id="$1"
    shift 1

    p6_run_write_cmd aws directconnect delete-virtual-interface --virtual-interface-id $virtual_interface_id "$@"
}
