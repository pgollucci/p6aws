p6_aws_ec2_dhcp_options_delete() {
    local dhcp_options_id="$1"
    shift 1

    p6_log_or_run aws ec2 delete-dhcp-options --dhcp-options-id $dhcp_options_id "$@"
}
