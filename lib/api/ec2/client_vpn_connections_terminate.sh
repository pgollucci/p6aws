######################################################################
#<
#
# Function:
#      = p6_aws_ec2_client_vpn_connections_terminate(client_vpn_endpoint_id)
#
# Arg(s):
#    client_vpn_endpoint_id - 
#
#
#>
######################################################################
p6_aws_ec2_client_vpn_connections_terminate() {
    local client_vpn_endpoint_id="$1"
    shift 1

    p6_run_write_cmd aws ec2 terminate-client-vpn-connections --client-vpn-endpoint-id $client_vpn_endpoint_id "$@"
}