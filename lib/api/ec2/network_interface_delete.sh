p6_aws_ec2_network_interface_delete() {
    local network_interface_id="$1"
    shift 1

    p6_log_or_run aws ec2 delete-network-interface --network-interface-id $network_interface_id "$@"
}
