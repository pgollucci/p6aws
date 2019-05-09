p6_aws_ec2_client_vpn_ingress_revoke() {
    local client_vpn_endpoint_id="$1"
    local target_network_cidr="$2"
    shift 2

    p6_run_write_cmd aws ec2 revoke-client-vpn-ingress --client-vpn-endpoint-id $client_vpn_endpoint_id --target-network-cidr $target_network_cidr "$@"
}
