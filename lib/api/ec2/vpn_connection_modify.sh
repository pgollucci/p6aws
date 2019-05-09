p6_aws_ec2_vpn_connection_modify() {
    local vpn_connection_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 modify-vpn-connection --vpn-connection-id $vpn_connection_id "$@"
}
