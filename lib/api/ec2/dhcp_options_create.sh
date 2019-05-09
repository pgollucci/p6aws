p6_aws_ec2_dhcp_options_create() {
    local dhcp_configurations="$1"
    shift 1

    p6_run_write_cmd aws ec2 create-dhcp-options --dhcp-configurations $dhcp_configurations "$@"
}
