######################################################################
#<
#
# Function:
#      = p6_aws_ec2_client_vpn_ingress_authorize(client_vpn_endpoint_id, target_network_cidr)
#
# Arg(s):
#    client_vpn_endpoint_id - 
#    target_network_cidr - 
#
#
#>
######################################################################
p6_aws_ec2_client_vpn_ingress_authorize() {
    local client_vpn_endpoint_id="$1"
    local target_network_cidr="$2"
    shift 2

    p6_run_write_cmd aws ec2 authorize-client-vpn-ingress --client-vpn-endpoint-id $client_vpn_endpoint_id --target-network-cidr $target_network_cidr "$@"
}