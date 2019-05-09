p6_aws_ec2_client_vpn_client_certificate_revocation_list_import() {
    local client_vpn_endpoint_id="$1"
    local certificate_revocation_list="$2"
    shift 2

    p6_run_read_cmd aws ec2 import-client-vpn-client-certificate-revocation-list --client-vpn-endpoint-id $client_vpn_endpoint_id --certificate-revocation-list $certificate_revocation_list "$@"
}
