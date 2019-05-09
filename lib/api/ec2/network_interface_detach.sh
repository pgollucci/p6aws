p6_aws_ec2_network_interface_detach() {
    local attachment_id="$1"
    shift 1

    p6_log_or_run aws ec2 detach-network-interface --attachment-id $attachment_id "$@"
}
