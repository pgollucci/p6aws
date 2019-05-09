p6_aws_ec2_network_interface_permission_create() {
    local network_interface_id="$1"
    local permission="$2"
    shift 2

    p6_log_or_run aws ec2 create-network-interface-permission --network-interface-id $network_interface_id --permission $permission "$@"
}
