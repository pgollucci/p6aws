p6_aws_ec2_client_vpn_client_configuration_export() {
    local client_vpn_endpoint_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 export-client-vpn-client-configuration --client-vpn-endpoint-id $client_vpn_endpoint_id "$@"
}
