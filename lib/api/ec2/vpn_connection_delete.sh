p6_aws_ec2_vpn_connection_delete() {
    local vpn_connection_id="$1"
    shift 1

    p6_log_or_run aws ec2 delete-vpn-connection --vpn-connection-id $vpn_connection_id "$@"
}
