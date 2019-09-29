######################################################################
#<
#
# Function:
#      = p6_aws_ec2_client_vpn_target_network_associate(client_vpn_endpoint_id, subnet_id)
#
# Arg(s):
#    client_vpn_endpoint_id - 
#    subnet_id - 
#
#
#>
######################################################################
p6_aws_ec2_client_vpn_target_network_associate() {
    local client_vpn_endpoint_id="$1"
    local subnet_id="$2"
    shift 2

    p6_run_read_cmd aws ec2 associate-client-vpn-target-network --client-vpn-endpoint-id $client_vpn_endpoint_id --subnet-id $subnet_id "$@"
}