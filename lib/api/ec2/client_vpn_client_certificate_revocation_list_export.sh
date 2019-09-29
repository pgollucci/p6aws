######################################################################
#<
#
# Function:
#      = p6_aws_ec2_client_vpn_client_certificate_revocation_list_export(client_vpn_endpoint_id)
#
# Arg(s):
#    client_vpn_endpoint_id - 
#
#
#>
######################################################################
p6_aws_ec2_client_vpn_client_certificate_revocation_list_export() {
    local client_vpn_endpoint_id="$1"
    shift 1

    p6_run_read_cmd aws ec2 export-client-vpn-client-certificate-revocation-list --client-vpn-endpoint-id $client_vpn_endpoint_id "$@"
}