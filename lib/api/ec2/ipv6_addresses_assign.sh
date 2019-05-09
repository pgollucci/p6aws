p6_aws_ec2_ipv6_addresses_assign() {
    local network_interface_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 assign-ipv6-addresses --network-interface-id $network_interface_id "$@"
}
