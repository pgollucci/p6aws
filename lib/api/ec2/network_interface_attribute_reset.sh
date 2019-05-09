p6_aws_ec2_network_interface_attribute_reset() {
    local network_interface_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 reset-network-interface-attribute --network-interface-id $network_interface_id "$@"
}
